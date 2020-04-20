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

# Config settings and group stings for Active Directory 2012
AD12usr =   [
            ["CN=tqadmin,OU=tqusers,DC=threatq,DC=com", "ChangeMePlease!", "linux-admins"],
            ["CN=contributor,OU=tqusers,DC=threatq,DC=com", "ChangeMePlease!", "primary-contributor"],
            ["CN=maintenance,OU=tqusers,DC=threatq,DC=com", "ChangeMePlease!", "tq-maintenance"],
            ["CN=readonly,OU=tqusers,DC=threatq,DC=com", "ChangeMePlease!", "read-only"]
            ]

AD12svr = ["", "tqad.threatq.com", "389", "tqadmin",
           "ChangeMePlease!", "DC=threatq,DC=com", "dn", "", "",
           "tqusers", "memberof", "sAMAccountName", "uid"
           ]


# Run test steps here

login.login(logger, host, driver, usr=CONFIG.TQUSER[0], pssword=CONFIG.TQUSER[1], SAML=CONFIG.SAML)
logger.info('Start LDAP config test.')

time.sleep(5)

driver.get(host + "config/ldap")


try:
# Active Directory 2012 options.
    LDAPconfig.setup(driver, logger,
            AD12svr[0],
            AD12svr[1],
            AD12svr[2],
            AD12svr[3],
            AD12svr[4],
            AD12svr[5],
            AD12svr[6],
            AD12svr[7],
            AD12svr[8],
            AD12svr[9],
            AD12svr[10],
            AD12svr[11],
            AD12svr[12],
            AD12usr[0][2],
            AD12usr[1][2],
            AD12usr[2][2],
            AD12usr[3][2],
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
    LDAPconfig.list_groups(driver, "56")
except Exception as e:
    print e

time.sleep(3)

try:

    LDAPconfig.list_users(driver, "34")
except Exception as e:
    print e


login.logout(logger, wdriver=driver)

for user in AD12usr:

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
