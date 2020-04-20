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
AD16usr =   [
            ["tqtest", "ChangeMePlease!", "Groups"],
            ["yitest", "Test1234", "tqAdmin"],
            ["clinthart", "ChangeMePlease!", "TQUser"],
            ["Guest", "ChangeMePlease!", "Guests"]
            ]

AD16svr = ["@threatq.com", "172.16.110.24", "8000", "tqadmin1",
           "ChangeMePlease!", "DC=threatq,DC=com", "dn", "", "",
           "Users", "memberof", "sAMAccountName", "uid"
           ]

# Run test steps here

login.login(logger, host, driver, usr=CONFIG.TQUSER[0], pssword=CONFIG.TQUSER[1], SAML=CONFIG.SAML)
logger.info('Start LDAP config test.')

time.sleep(1)

driver.get(host + "config/ldap")


try:
# Active Directory 2016 options.
    LDAPconfig.setup(driver, logger,
            AD16svr[0],
            AD16svr[1],
            AD16svr[2],
            AD16svr[3],
            AD16svr[4],
            AD16svr[5],
            AD16svr[6],
            AD16svr[7],
            AD16svr[8],
            AD16svr[9],
            AD16svr[10],
            AD16svr[11],
            AD16svr[12],
            AD16usr[0][2],
            AD16usr[1][2],
            AD16usr[2][2],
            AD16usr[3][2],
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
    LDAPconfig.list_groups(driver, "54")
except Exception as e:
    print ("List Groups button not here")

time.sleep(3)

try:
    LDAPconfig.list_users(driver, "25")
except Exception as e:
    print ("List Users not here")

time.sleep(3)

login.logout(logger, wdriver=driver)

for user in AD16usr:

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
