from selenium import webdriver
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.keys import Keys
from config import CONFIG
from selenium.webdriver.chrome.options import Options
import time, re, login
import sys, os
import logging
script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)
logger = logging.getLogger('test')


if CONFIG.WEBDRIVER == "Chrome":
    _chrome_options = Options()
    _chrome_options.add_argument('--disable-infobars')
    driver = webdriver.Chrome(chrome_options=_chrome_options)

elif CONFIG.WEBDRIVER == "Firefox":

    driver = webdriver.Firefox()

else:

    print('No valid Webdrive was provided. ')

driver.set_window_size(1440, 1200)
driver.implicitly_wait(CONFIG.waittime)

host = CONFIG.HOST


def ldapSetup(ldapdomain,
              serveraddress,
              port,
              orgunit,
              uidkey,
              userdn,
              userappdom,
              groupname,
              filtername,
              ldapsuper,
              ldapadmin,
              ldapanalyst,
              ldapobserver
              ):

    driver.get(host + "config/ldap")

    time.sleep(3)

    # Confirm which tab we landed on before proceding.
    source  = driver.page_source
    if "Use SSL" not in source:
        print ("On correct LDAP Config Page")
    else:
        print ("Change Tabs")
        driver.find_element_by_link_text("Updated LDAP Settings").click()


    driver.find_element_by_id("ldapDomain").clear()
    driver.find_element_by_id("ldapDomain").send_keys(ldapdomain)

    driver.find_element_by_id("serverAddress").clear()
    driver.find_element_by_id("serverAddress").send_keys(serveraddress)

    driver.find_element_by_id("portNumber").clear()
    driver.find_element_by_id("portNumber").send_keys(port)

    Select(driver.find_element_by_id("useRdn")).select_by_visible_text(userdn)

    time.sleep(2)

    driver.find_element_by_id("organizationalUnit").clear()
    driver.find_element_by_id("organizationalUnit").send_keys(orgunit)

    driver.find_element_by_id("uidKey").clear()
    driver.find_element_by_id("uidKey").send_keys(uidkey)

    Select(driver.find_element_by_id("userAppendDomain")).select_by_visible_text(userappdom)

    driver.find_element_by_id("groupFieldName").clear()
    driver.find_element_by_id("groupFieldName").send_keys(groupname)

    driver.find_element_by_id("filterFieldName").clear()
    driver.find_element_by_id("filterFieldName").send_keys(filtername)

    driver.find_element_by_id("ldap.group.super").clear()
    driver.find_element_by_id("ldap.group.super").send_keys(ldapsuper)

    driver.find_element_by_id("ldap.group.administrator").clear()
    driver.find_element_by_id("ldap.group.administrator").send_keys(ldapadmin)

    driver.find_element_by_id("ldap.group.analyst").clear()
    driver.find_element_by_id("ldap.group.analyst").send_keys(ldapanalyst)

    driver.find_element_by_id("ldap.group.observer").clear()
    driver.find_element_by_id("ldap.group.observer").send_keys(ldapobserver)

    time.sleep(1)

    driver.find_element_by_xpath("//BUTTON[text()='Save']").click()

    time.sleep(1)

    # scroll back up to the top to enable the ldap settings
    driver.find_element_by_tag_name('body').send_keys(Keys.CONTROL + Keys.HOME)

    time.sleep(1)

    try:
        driver.find_element_by_css_selector("i.fa.fa-fw.fa-toggle-off").click()
    except Exception as e:
        print ('already set to enable')

    time.sleep(1)

# Config settings and group stings for Active Directory 2012
AD12usr = [
          ["tqadmin", "ChangeMePlease!", "CN=linux-admins,CN=Builtin,DC=threatq,DC=com"],
          ["maintenance", "ChangeMePlease!", "CN=tq-maintenance,CN=Builtin,DC=threatq,DC=com"],
          ["contributor", "ChangeMePlease!", "CN=primary-contributor,CN=Builtin,DC=threatq,DC=com"],
          ["readonly", "ChangeMePlease!", "CN=read-only,CN=Builtin,DC=threatq,DC=com"],
              ]

AD12svr = ["threatq.com", "ldap://tqad.threatq.com", "389", "tqusers", "memberUid", "No", "Yes", "memberof", "uid"]


# Config settings and group stings for OpenLDAP
openLDAPusers = [
             ["admin@threatq.com", "threatquotientthreatquotient", "administrator"],
             ["Super@threatq.com", "threatquotientthreatquotient", "ldapSuper"],
             ["Analyst@threatq.com", "threatquotientthreatquotient", "ldapAnalyst"],
             ["Observer@threatq.com", "threatquotientthreatquotient", "ldapObserver"]
                ]

openLDAPserver = ["threatq.com", "ldap://tqldap.threatq.com", "389", "People", "uid", "Yes", "No", "cn", "memberUid"]


# Run test steps here

login.login(logger, host, driver, usr=CONFIG.TQUSER[0], pssword=CONFIG.TQUSER[1])
logger.info('Start LDAP config test.')

time.sleep(2)

# openLDAP options.
try:
    ldapSetup(openLDAPserver[0],
          openLDAPserver[1],
          openLDAPserver[2],
          openLDAPserver[3],
          openLDAPserver[4],
          openLDAPserver[5],
          openLDAPserver[6],
          openLDAPserver[7],
          openLDAPserver[8],
          openLDAPusers[0][2],
          openLDAPusers[1][2],
          openLDAPusers[2][2],
          openLDAPusers[3][2])     # configure the TQ server for using ldap
except Exception as e:
    logger.info (e)
    print (e)

login.logout(logger, wdriver=driver)

for user in openLDAPusers:

    login.login(logger, host, driver, usr=user[0], pssword=user[1])

    time.sleep(1)

    login.logout(logger, wdriver=driver)

    time.sleep(1)

logger.info('End LDAP config test')

driver.quit()
