<?php
/**
 * @license
 *
 * ThreatQuotient Proprietary and Confidential
 * Copyright (c)2017 ThreatQuotient, Inc. All rights reserved.
 *
 * NOTICE: All information contained herein, is, and remains the property of ThreatQuotient, Inc.
 * The intellectual and technical concepts contained herein are proprietary to ThreatQuotient, Inc.
 * and its suppliers and may be covered by U.S. and Foreign Patents, patents in process, and are
 * protected by trade secret or copyright law.
 *
 * Dissemination of this information or reproduction of this material is strictly forbidden unless prior
 * written permission is obtained from ThreatQuotient, Inc.
 */

namespace ThreatQ\Console\Command\Utilities;

use Illuminate\Console\ConfirmableTrait;
use Symfony\Component\Console\Input\InputOption;
use ThreatQ\Console\Command\Exception\Exception;
use ThreatQ\Console\Command\Task\ExclusivityTrait;
use ThreatQ\Console\Command\Command;

/**
 * Class ResetAttributeIds
 *
 * @package ThreatQ\Console\Command\Utilities
 * @author Peter Fleming <peter.fleming@threatq.com>
 */
class LdapTest extends Command
{
    use ExclusivityTrait;
    use ConfirmableTrait;

    /**
     * The console command name.
     *
     * @var string
     */
    protected $name = 'threatq:ldap-test';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Runs LDAP test and records results for diagnostics';

    /**
     * @var string
     */
    protected $version = '1.0';

    /**
     * @var string
     */
    protected $ldapUserName = '';

    /**
     * @var string
     */
    protected $ldapPassword = '';

    /**
     * @var array
     */
    protected $ldapConfigs = [];

    /**
     * @var array
     *
     */
    protected $errors = [];

    /**
     * @var array
     */
    protected $messages = [];

    /**
     * @var bool
     */
    protected $debug = false;

    /**
     * Execute the console command.
     */
    public function fire()
    {
        $begin = microtime(true);
        $version = '';
        $versionFile = $config = $this->laravel['config']->get('release.version_file');
        if (file_exists($versionFile)) {
            $version = trim(file_get_contents($versionFile), PHP_EOL);
        }

        $this->configMessage('<green>ThreatQ LDAP Test Tool' . ($version ? ' v' : '') . $version . '</green>');
        $this->configMessage('');
        if ($this->option('debug')) {
            $this->debug = true;
            $this->configMessage('<red>-- DEBUG ENABLED --</red>');
            $this->configMessage('');
        }

        $ldapEnabled = $this->isLdapEnabled();
        if ($ldapEnabled == '') {
            $this->errorMessage(
                'LDAP settings not found, please configure base settings via the TQ Appliance User Interface.'
            );
        } else {
            $domain = $this->getConfigValue('ldap.config.domain');
            $server = $this->getConfigValue('ldap.config.server');
            $port = $this->getConfigValue('ldap.config.port');
            $ou = $this->getConfigValue('ldap.config.ou');

            $uidKey = $this->getConfigValue('ldap.config.uid_key');
            $useRdn = $this->getConfigValue('ldap.config.use_rdn');
            $appendDomain = $this->getConfigValue('ldap.config.user_append_domain');
            $groupFieldName = $this->getConfigValue('ldap.config.group_field_name');
            $filterFieldName = $this->getConfigValue('ldap.config.filter_field_name');
            $tqGroups = app('configuration')->where('key', 'LIKE', 'ldap.group.%')->get();

            $this->configMessage('--Config--');
            $this->configMessage('LDAP Enabled?             : <yellow>' .
                ($ldapEnabled ?: '* not set *') . '</yellow>');
            $this->configMessage('LDAP Domain               : <yellow>' .
                ($domain ?: '* not set *') . '</yellow>');
            $this->configMessage('Server Address            : <yellow>' .
                ($server ?: '* not set *') . '</yellow>');
            $this->configMessage('Port #                    : <yellow>' .
                ($port ?: '* not set *') . '</yellow>');
            $this->configMessage('Organizational Unit (OU)  : <yellow>' .
                ($ou ?: '* not set *') . '</yellow>');
            $this->configMessage('User Lookup Name          : <yellow>' .
                ($uidKey ?: '* not set *') . '</yellow>');
            $this->configMessage('Use RDN?                  : <yellow>' .
                ($useRdn ?: '* not set *') . '</yellow>');
            $this->configMessage('Append Domain to Username?: <yellow>' .
                ($appendDomain ?: '* not set *') . '</yellow>');
            $this->configMessage('Group Field Name          : <yellow>' .
                ($groupFieldName ?: '* not set *') . '</yellow>');
            $this->configMessage('Filter Field Name         : <yellow>' .
                ($filterFieldName ?: '* not set *') . '</yellow>');

            $this->configMessage('--TQ Group Assignments--');
            $countOfTqGroups = 0;
            foreach ($tqGroups as $tqGroup) {
                $this->configMessage(str_pad($tqGroup->key, 26) . ': <yellow>' . $tqGroup->value . '</yellow>');
                $countOfTqGroups++;
            }
            $this->configMessage('');

            if (!$server) {
                $this->errorMessage('LDAP configuration server is blank.');
            }
            if (!$port) {
                $this->errorMessage('LDAP configuration port is blank.');
            }
            if (!$ou) {
                $this->errorMessage('LDAP configuration OU is blank.');
            }
            if (!$domain) {
                $this->errorMessage('LDAP configuration Domain is blank.');
            }
            if ($countOfTqGroups == 0) {
                $this->errorMessage('LDAP no TQ group associations defined.');
            }

            $host = $server . ':' . $port;

            if ($server && $port) {
                try {
                    $connect = ldap_connect($host);
                } catch (\Exception $e) {
                    $connect = '';
                    $this->errorMessage($e->getMessage());
                }
                if (!$connect) {
                    $this->errorMessage('LDAP configuration parameters server and port are invalid.');
                } else {
                    $this->ldapUserName = $this->ask('Please provide the your LDAP username: ');
                    $this->ldapPassword = $this->secret('Please provide the password for your LDAP account: ');
                    try {
                        $ldapBind = $this->bind($connect, $this->ldapUserName, $this->ldapPassword);
                        $bindCompleted = true;
                    } catch (\Exception $e) {
                        $this->errorMessage($e->getMessage() . ' (User: ' . $this->ldapUserName . ')');
                        $bindCompleted = false;
                    }
                    if ($bindCompleted) {
                        $this->configMessage('<green>Bind Completed</green>');
                        if (!isset($ldapBind) && !$ldapBind) {
                            $this->errorMessage('LDAP failed to bind to server: ' .
                                trim($this->getConfigValue('ldap.config.server')) .
                                ' with user: ' . $this->ldapUserName);
                        } else {
                            $ldapGroups = $this->getUserGroups($connect, $this->ldapUserName);
                            $this->info('');
                            $this->info('<green>--LDAP Groups found--</green>');
                            $memberOfGroupCount = 0;
                            foreach ($ldapGroups as $index => $ldapGroup) {
                                $memberOfGroupCount++;
                                $this->configMessage($index . ': <yellow>' . $ldapGroup . '</yellow>');
                            }
                            if ($memberOfGroupCount == 0) {
                                $this->errorMessage('LDAP user does not belong to any groups.');
                            } else {
                                $validGroupMapFound = false;
                                $tqUserGroups = [];
                                foreach ($tqGroups as $tqGroup) {
                                    if (in_array($tqGroup->value, $ldapGroups)) {
                                        $validGroupMapFound = true;
                                        $tqUserGroups[] = str_replace('ldap.group.', '', $tqGroup->key);
                                    }
                                }

                                if (!$validGroupMapFound) {
                                    $this->errorMessage('LDAP User does not map to TQ permission group.');
                                } else {
                                    $this->configMessage('');
                                    $this->configMessage('<green>--User a Member of--</green>');

                                    foreach ($tqUserGroups as $index => $tqUserGroup) {
                                        $this->configMessage($index . ': <yellow>' . $tqUserGroup . '</yellow>');
                                    }
                                }

                            }
                        }
                    } else {
                        $this->configMessage('<green>Bind did NOT Complete</green>');

                    }
                }
            }
        }
        if (!$this->errors) {
            $this->configMessage('<green>No errors reported!</green>');
        }

        $this->configMessage(
            '<info>' . number_format(microtime(true) - $begin, 2) . 's ' . '</info>' .
            'Finished > <magenta>' . date('Y-m-d H:i:s', microtime(true)) . '</magenta>'
        );
        $tmpFileName = '/tmp/ldap_' . date('Ymd_His') . '.log';
        $report = '';
        foreach ($this->messages as $message) {
            $report .= strip_tags($message) . PHP_EOL;
        }
        $report .= '--ERRORS--' . PHP_EOL;
        foreach ($this->errors as $error) {
            $report .= $error . PHP_EOL;
        }
        file_put_contents($tmpFileName, $report);
        $this->info('<info>Report saved to: ' . $tmpFileName . '</info>');
    }


    /**
     * Returns array of LDAP groups with user as member
     *
     * @param $connect resource
     * @param $username string
     *
     * @return array
     */
    public function getUserGroups($connect, $username)
    {
        $groupFieldName = $this->getConfigValue('ldap.config.group_field_name');
        $filterFieldName = $this->getConfigValue('ldap.config.filter_field_name');

        $filter = '(&(cn=*)(' . $filterFieldName . '=' . $username . '))';
        $this->info('LDAP Search Filter request: ' . $filter);
        $fields = [$groupFieldName];
        $result = $this->search($connect, $filter, $fields);
        if($this->debug) {
            print_r($result);
        }
        $this->info('Count of matches found: ' . $result['count']);
        unset($result['count']);
        $ldapGroups = [];
        $groupNameFound = false;
        foreach ($result as $object) {
            if (isset($object[$groupFieldName])) {
                $groupNameFound = true;
                if (is_array($object[$groupFieldName])) {
                    $tmpGroups = $object[$groupFieldName];
                    unset($tmpGroups['count']);
                    foreach ($tmpGroups as $group) {
                        $ldapGroups[] = $group;
                    }
                } else {
                    $ldapGroups[] = $object[$groupFieldName];
                }
            }
        }
        if (!$groupNameFound) {
            app('log')->info($groupFieldName . ' not found as part of Group Query request: ' . print_r($result, true));
        }
        return $ldapGroups;
    }

    /**
     * LDAP search
     *
     * @param $connect resource
     * @param $filter string
     * @param $fields array
     *
     * @return array
     */
    public function search($connect, $filter, $fields = [])
    {
        $search = ldap_search($connect, $this->generateDomainComponents(), $filter, $fields);

        return ldap_get_entries($connect, $search);
    }

    /**
     * Return config value checking that it exists
     *
     * @param $key
     * @return string
     */
    public function getConfigValue($key)
    {
        if (array_key_exists($key, $this->ldapConfigs)) {
            return $this->ldapConfigs[$key];
        } else {
            return '';
        }
    }

    public function isLdapEnabled()
    {
        $ldapEnabled = app('configuration')->where('key', 'ldap.enabled')->first();
        $configs = app('configuration')->where('group', 'ldap')->get();
        foreach ($configs as $config) {
            $this->ldapConfigs[$config->key] = $config->value;
        }

        if (isset($ldapEnabled->value)) {
            if ($ldapEnabled->value == 1) {
                return 'Yes';
            }
        } else {
            return '';
        }
        return 'No';
    }

    /**
     * @param $connect
     * @param $userName
     * @param $password
     * @return bool
     */
    public function bind($connect, $userName, $password)
    {
        $domain = $this->getConfigValue('ldap.config.domain');
        $appendDomain = $this->getConfigValue('ldap.config.user_append_domain');
        $useRdn = $this->getConfigValue('ldap.config.use_rdn');

        if ($appendDomain && $appendDomain <> '0') {
            $userName = $userName . '@' . $domain;
        }
        if ($useRdn && $useRdn <> '0') {
            $rdn = $this->generateRdn($userName);
        } else {
            $rdn = $userName;
        }
        ldap_set_option($connect, LDAP_OPT_REFERRALS, 0);
        ldap_set_option($connect, LDAP_OPT_PROTOCOL_VERSION, 3);

        return ldap_bind($connect, $rdn, $password);
    }

    /**
     * Generate RDN String in format "uid=username,ou=People,dc=threatq,dc=com"
     *
     * @param $cn string
     *
     * @return string
     */
    protected function generateRdn($cn)
    {
        $ouName = $this->getConfigValue('ldap.config.ou');
        $uidKey = $this->getConfigValue('ldap.config.uid_key');
        $rdn = $uidKey . '=' . $cn . ',ou=' . $ouName . ',';
        $rdn .= $this->generateDomainComponents();

        return $rdn;
    }

    /**
     * Generate domain component string in format "dc=threatq,dc=com"
     *
     * @return string
     */
    protected function generateDomainComponents()
    {
        $domain = $this->getConfigValue('ldap.config.domain');

        $dcArray = [];
        $domainComponents = explode('.', $domain);
        foreach ($domainComponents as $domainComponent) {
            $dcArray[] = 'dc=' . $domainComponent;
        }

        return implode(',', $dcArray);
    }

    /**
     * @param $message
     */
    private function configMessage($message)
    {
        $this->info($message);
        $this->messages[] = $message;
    }

    /**
     * @param $message
     */
    private function errorMessage($message)
    {
        $this->error($message);
        $this->errors[] = $message;
    }

    /**
     * Get the command input options
     *
     * @return array
     */
    protected function getOptions()
    {
        return [
            [
                'debug',
                '',
                InputOption::VALUE_NONE,
                'Enable debuging info'
            ]
        ];
    }
}
