from selenium import webdriver
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.keys import Keys
from config import CONFIG
from selenium.webdriver.chrome.options import Options
import paramiko
import time, login, os, sys
import logging
import LDAPconfig


script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s %(message)s', level=logging.INFO)
logger = logging.getLogger('test')

if CONFIG.WEBDRIVER == "Chrome":
    _chrome_options = Options()
    _chrome_options.add_argument("--start-fullscreen")
    driver = webdriver.Chrome(chrome_options=_chrome_options)

elif CONFIG.WEBDRIVER == "Firefox":

    driver = webdriver.Firefox()

else:

    print('No valid Webdrive was provided. ')

# driver.set_window_size(1440, 1200)
driver.implicitly_wait(CONFIG.waittime)
# time.sleep(2)

host = CONFIG.HOST

# copy ldap.config to server
# LDAPconfig.cpy_config(logger, CONFIG.HOST, CONFIG.server, CONFIG.username)
# LDAPconfig.cpy_config(logger, CONFIG.HOST, CONFIG.server, username='root', password='threatquotientthreatquotient')



# Config settings and group stings for OpenLDAP
openLDAPusers = [
             ["admin@threatq.com", "threatquotientthreatquotient", "administrator"],
             ["Super@threatq.com", "threatquotientthreatquotient", "ldapSuper"],
             ["Analyst@threatq.com", "threatquotientthreatquotient", "ldapAnalyst"],
             ["Observer@threatq.com", "threatquotientthreatquotient", "ldapObserver"]
                ]

openLDAPserver = ["", "tqldap.threatq.com", "389", "uid=admin@threatq.com,ou=People,dc=threatq,dc=com",
           "threatquotientthreatquotient", "DC=threatq,DC=com", "dn", "objectClass=posixAccount", "objectClass=posixGroup",
           "memberUid", "cn", "uid", "memberUid"
           ]

# Run test steps here

login.login(logger, host, driver, usr=CONFIG.TQUSER[0], pssword=CONFIG.TQUSER[1], SAML=CONFIG.SAML)
logger.info('Start LDAP config test.')

time.sleep(1)

driver.get(host + "config/ldap")


try:
# Active Directory 2012 options.
    LDAPconfig.setup(driver, logger,
            openLDAPserver[0],
            openLDAPserver[1],
            openLDAPserver[2],
            openLDAPserver[3],
            openLDAPserver[4],
            openLDAPserver[5],
            openLDAPserver[6],
            openLDAPserver[7],
            openLDAPserver[8],
            openLDAPserver[9],
            openLDAPserver[10],
            openLDAPserver[11],
            openLDAPserver[12],
            openLDAPusers[0][2],
            openLDAPusers[1][2],
            openLDAPusers[2][2],
            openLDAPusers[3][2],
            SSL=False,
            LDAP=True
                )     # configure the TQ server for using ldap
except Exception as e:
    logger.info (e)
    print (e)

try:
    LDAPconfig.test_connection (driver)
except Exception as e:
    print e

time.sleep(3)
try:
    LDAPconfig.list_groups(driver, "13")
except Exception as e:
    print ("No button to execute")

time.sleep(3)

try:
    LDAPconfig.list_users(driver, "17")
except Exception as e:
    print ("No button to execute")

time.sleep(3)


login.logout(logger, wdriver=driver)

for user in openLDAPusers:

    try:
        login.login(logger, host, driver, usr=user[0], pssword=user[1], SAML=CONFIG.SAML)
    except Exception as e:
        print ("Login attempt failed for user: %s") % user[0]

    time.sleep(1)

    try:
        login.logout(logger, wdriver=driver)
    except Exception as e:
        print ("logout failed, probably not needed.")

    time.sleep(1)

logger.info('End LDAP config test')

driver.quit()
