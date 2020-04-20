import paramiko
from config import CONFIG

ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(CONFIG.server, username=CONFIG.username)
# ssh.connect(CONFIG.server, username='root', password='threatquotientthreatquotient')

# use shell for running the script to make-object-set
channel = ssh.invoke_shell()

# patch = 'tqAdversaryReader-3.1.2-py2-none-any.whl'
# patch = 'solr.patch'
# patch = 'tie-threatq_backup_4.9.0_2018-09-22.tgz'
# patch = 'LdapTest.php'
# patch = 'RepairTrimmedAttributes.php'
# patch = 'object-attribute-dedup.patch'
# patch = 'te-18233-01.patch'
# patch = 'te-18588-int-to-bigint-01.diff'
# ptach = 'AddObjectRelations.php'
# php artisan threatq:add-object-relations in /var/api/src/Console/Command/Utilities/
# patch = 'te-18588-01.diff'
# patch = '0001-TE-18533-DEV-remove-relational_ids_json-field.patch'
# patch = 'te-18588-solr-ids-long-fix-01.patch'
# patch = 'te-19309-tq_op_active_directory-1.0.0-py3-none-any.whl'
# patch = 'threatq.min.js'
# patch = 'notificationGenerator.py'
# patch = 'te-21020.patch'
# patch = "0001_TE-21154_DEV_add_ldap_logging.patch"
# patch = 'TE-21254_object_audit_artisan_command_and_script.patch'
patch = 'STE_duplicate_indicator_audit.patch'

tmp = '/tmp/%s' % patch
remotepath = '/var/www/api/%s' % patch
localfile = './files/patch/%s' % patch


def install_patch():

    # copy files up to server
    ftp_client = ssh.open_sftp()

    ftp_client.put(localfile, tmp)
    ftp_client.close()

    # copy file to dir
    tmpfile = '/tmp/%s' % patch
    cmd = 'sudo cp %s %s' % (tmpfile, remotepath)
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')

    ftp_client.close()

install_patch()
