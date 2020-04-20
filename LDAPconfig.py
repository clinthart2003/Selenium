from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys
import time
import paramiko
from config import CONFIG
import api_tests

host = CONFIG.HOST



def cpy_config(logger, HOST, server, username):

    configfile = 'ldap.conf'

    ssh = paramiko.SSHClient()
    ssh.load_system_host_keys()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect(server, username=username)

    # use shell for running the script to make-object-set
    # channel = ssh.invoke_shell()


    # Copy all the files needed to setup an Investigations server

    localfile = "./files/%s" % configfile
    remotepath = "/tmp/%s" % configfile
    ftp_client = ssh.open_sftp()
    ftp_client.put(localfile, remotepath)
    ftp_client.close()

    # Move the files to their appropriate location:
    cmd = 'sudo cp /tmp/%s /etc/openldap' % configfile
    print (cmd)
    print (' ')
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    exit_status = ssh_stdout.channel.recv_exit_status()
    if exit_status == 0:
        logger.info(ssh_stdout.read())

    else:
        logger.warn(ssh_stderr.read())


    # check the file is correct
    cmd = 'cat /etc/openldap/%s' % configfile
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    exit_status = ssh_stdout.channel.recv_exit_status()
    if exit_status == 0:
        logger.info(ssh_stdout.read())

    else:
        logger.warn(ssh_stderr.read())


def setup(driver, logger,
                accountSuffix,
                hostAddress,
                portNumber,
                adminUserName,
                password,
                baseDN,
                dnFieldName,
                userSearchFilter,
                groupSearchFilter,
                primaryGroupName,
                groupMemberFieldName,
                userIdKeyFieldName,
                userGroupMemberKeyFieldName,
                ldapsuper,
                ldapadmin,
                ldapanalyst,
                ldapobserver,
                LDAP=True,
                SSL=True
                ):


    driver.get(host + "config/ldap")

    time.sleep(5)

    # Confirm which tab we landed on before proceding.
    source = driver.page_source
    if "Use SSL" not in source:
        # driver.find_element_by_xpath("//a[contains(text(), 'Updated LDAP Settings')]").click
        driver.find_element_by_link_text("Updated LDAP Settings").click()

    time.sleep(3)

    driver.find_element_by_id("accountSuffix").clear()
    driver.find_element_by_id("accountSuffix").send_keys(accountSuffix)

    driver.find_element_by_id("hostAddress").clear()
    driver.find_element_by_id("hostAddress").send_keys(hostAddress)

    driver.find_element_by_id("portNumber").clear()
    driver.find_element_by_id("portNumber").send_keys(portNumber)

    driver.find_element_by_id("adminUserName").clear()
    driver.find_element_by_id("adminUserName").send_keys(adminUserName)

    driver.find_element_by_xpath("//INPUT[@type='password']").clear()
    driver.find_element_by_xpath("//INPUT[@type='password']").send_keys(password)

    driver.find_element_by_id("baseDN").clear()
    driver.find_element_by_id("baseDN").send_keys(baseDN)

    driver.find_element_by_id("dnFieldName").clear()
    driver.find_element_by_id("dnFieldName").send_keys(dnFieldName)

    driver.find_element_by_id("userSearchFilter").clear()
    driver.find_element_by_id("userSearchFilter").send_keys(userSearchFilter)

    driver.find_element_by_id("groupSearchFilter").clear()
    driver.find_element_by_id("groupSearchFilter").send_keys(groupSearchFilter)

    driver.find_element_by_id("primaryGroupName").clear()
    driver.find_element_by_id("primaryGroupName").send_keys(primaryGroupName)

    driver.find_element_by_id("groupMemberFieldName").clear()
    driver.find_element_by_id("groupMemberFieldName").send_keys(groupMemberFieldName)

    driver.find_element_by_id("userIdKeyFieldName").clear()
    driver.find_element_by_id("userIdKeyFieldName").send_keys(userIdKeyFieldName)

    driver.find_element_by_id("userGroupMemberKeyFieldName").clear()
    driver.find_element_by_id("userGroupMemberKeyFieldName").send_keys(userGroupMemberKeyFieldName)


    driver.find_element_by_id("ldap.group.super").clear()
    driver.find_element_by_id("ldap.group.super").send_keys(ldapsuper)

    driver.find_element_by_id("ldap.group.administrator").clear()
    driver.find_element_by_id("ldap.group.administrator").send_keys(ldapadmin)

    driver.find_element_by_id("ldap.group.analyst").clear()
    driver.find_element_by_id("ldap.group.analyst").send_keys(ldapanalyst)

    driver.find_element_by_id("ldap.group.observer").clear()
    driver.find_element_by_id("ldap.group.observer").send_keys(ldapobserver)

    time.sleep(1)

    # scroll back up to the top to enable the ldap settings
    driver.find_element_by_tag_name('body').send_keys(Keys.CONTROL + Keys.HOME)

    time.sleep(1)

    if SSL == True:
        print ("making SSL secure")
        try:
            driver.find_element_by_xpath(
                "//a[@class='btn text'][@ng-click='$ctrl.updatedLdapToggles(\'use_ssl\')'][@class='fa fa-fw fa-toggle-off']").click()

        except Exception as e:
            print ('SSL Already turned on.')

    elif SSL == False:
        print ("making SSL un-secure")
        try:
            driver.find_element_by_xpath(
                "//a[@class='btn text'][@ng-click='$ctrl.updatedLdapToggles(\'use_ssl\')'][@class='fa fa-fw fa-toggle-on']").click()

        except Exception as e:
            print ('SSL Already turned off.')
    else:
        logger.warn("please set the SSL level")


    # Save config before trying to enable LDAP/AD
    driver.find_element_by_xpath("//FOOTER/DIV/BUTTON[text()='Save']").click()
    time.sleep(5)

    if LDAP == True:

        api_tests.set_access()
        api_tests.enable_ldap()


        time.sleep(5)

    if LDAP == False:

        api_tests.set_access()
        api_tests.disable_ldap()

    time.sleep(2)

    driver.refresh()


def list_groups(driver, numofgroups):

    element = driver.find_element_by_id("adminUserName")
    driver.execute_script("arguments[0].scrollIntoView();", element)

    # Save config before trying to enable LDAP/AD
    # driver.find_element_by_xpath("//FOOTER/DIV/BUTTON[text()='Save']").click()

    time.sleep(5)

    driver.find_element_by_xpath(
        "(.//*[normalize-space(text()) and normalize-space(.)='List Groups'])[1]/following::button[1]").click()

    time.sleep(5)

    html = driver.page_source

    verification = "Total: %s Groups" % numofgroups

    assert (verification in html), "Total Groups did not match"

    # collaps the list
    driver.find_element_by_xpath(
        "(.//*[normalize-space(text()) and normalize-space(.)='Connect'])[1]/following::i[1]").click()


def list_users(driver, numofusers):

    element = driver.find_element_by_id("adminUserName")
    driver.execute_script("arguments[0].scrollIntoView();", element)

    driver.find_element_by_xpath(
        "(.//*[normalize-space(text()) and normalize-space(.)='List Users'])[1]/following::button[1]").click()

    time.sleep(5)

    html = driver.page_source

    verification = "Total: %s Users" % numofusers

    assert (verification in html), "Total Users did not match"

    #collaps the list
    driver.find_element_by_xpath(
        "(.//*[normalize-space(text()) and normalize-space(.)='Connect'])[2]/following::i[1]").click()


def test_connection (driver):

    driver.refresh()

    time.sleep(3)

    # locate and scroll to element
    element = driver.find_element_by_id("adminUserName")
    driver.execute_script("arguments[0].scrollIntoView();", element)

    time.sleep(5)

    driver.find_element_by_xpath('//button[text()=" Test Connection"]').click()

    time.sleep(4)

    html = driver.page_source

    verification = "Connected successfully:"

    assert (verification in html), "Connection FAILD"

