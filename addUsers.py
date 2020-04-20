from selenium import webdriver
from selenium.webdriver.support.select import Select
from config import CONFIG
from selenium.webdriver.chrome.options import Options
import time, login
import sys, os
import logging
script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)
logger = logging.getLogger('test')


'''
Set longrun to True if you want to sleep for 20 min between major events.  
This test was created due to users being logged out even when they were 
active in the browsers.  This will help identify what areas of the product
are not resetting the keepalive timer.
'''

if CONFIG.WEBDRIVER == "Chrome":
    _chrome_options = Options()
    _chrome_options.add_argument('--start-fullscreen')
    driver = webdriver.Chrome(chrome_options=_chrome_options)

elif CONFIG.WEBDRIVER == "Firefox":

    driver = webdriver.Firefox()

else:

    print('No valid Webdrive was provided. ')

# driver.set_window_size(1440, 1200)
driver.implicitly_wait(CONFIG.waittime)
# time.sleep(2)

users = [
         ["Adversary Reader", "ChangeMePlease!", "threatq2@threatq.com", "Administrative Access", "Adversary Reader Process"],
         ["Clint.Hart", "ChangeMePlease!", "Clint.Hart@threatq.com", "Maintenance Account", "Malware Attack"],
         ["john.doe", "ChangeMePlease!", "john.doe@threatq.com", "Primary Contributor Access","DDoS Attack"],
         ["Han Solo", "ChangeMePlease!", "han.solo@threatq.com", "Primary Contributor Access","DDoS Attack"],
         ["Jack Reacher", "ChangeMePlease!", "Jack.Reacher@threatq.com", "Administrative Access", "Wannacry Incident"],
         ["John.Wick", "ChangeMePlease!", "john.Wick@threatq.com", "Administrative Access", "Unknown breach"],
         ["James.Bond", "ChangeMePlease!","James.Bond@threatq.com", "Read Only Access", "Russian Intrusion"],
         ["Bob Observer", "ChangeMePlease!", "bobo@threatq.com", "Read Only Access", "unknown breach"],
         ["Alice Contributor", "ChangeMePlease!", "alicec@threatq.com", "Primary Contributor Access", "DDos Attack"],
         ["Sue Maintenancer", "ChangeMePlease!", "suem@threatq.com", "Maintenance Account", "DDos Attack"],
         ["Dave Administrator", "ChangeMePlease!", "davea@threatq.com", "Administrative Access", "DDoS Attack"],
         ["admin@threatq.com", "ChangeMePlease!", "admin@threatq.com", "Administrative Access", "DDoS Attack"],
         ["Super@threatq.com", "ChangeMePlease!", "Super@threatq.com", "Maintenance Account","DDoS Attack"],
         ["Analyst@threatq.com", "ChangeMePlease!", "Analyst@threatq.com", "Primary Contributor Access", "DDoS Attack"],
         ["Observer@threatq.com", "ChangeMePlease!", "Observer@threatq.com","Read Only Access", "DDoS Attack"],
         ["yitest", "ChangeMePlease!", "yitest@threatq.com", "Administrative Access", "DDoS Attack"],
         ["clinthart", "ChangeMePlease!", "clinthart@threatq.com", "Primary Contributor Access", "DDoS Attack"],
         ["Guest", "ChangeMePlease!", "Guest@threatq.com", "Read Only Access", "DDoS Attack"],
         ["tqadmin", "ChangeMePlease!", "tqadmin@tq.com", "Administrative Access", "Wannacry Incident"],
         ["contributor", "ChangeMePlease!", "contributor@tq.com", "Primary Contributor Access", "Wannacry Incident"],
         ["maintenance", "ChangeMePlease!", "maintenance@tq.com", "Maintenance Account", "Wannacry Incident"],
         ["readonly", "ChangeMePlease!", "readonly@tq.com", "Read Only Access", "Wannacry Incident"]
         ]

host = CONFIG.HOST


def createUser (logger, userName='', password='', email = '', groupID = '' ):

    driver.find_element_by_xpath("//a[@id='primary-user-menu']/i").click()

    driver.find_element_by_link_text("User Management").click()

    time.sleep (5)

    driver.find_element_by_xpath("//div[2]/button").click()

    driver.find_element_by_id("userDisplayName").send_keys(userName)

    Select(driver.find_element_by_id("userGroupId")).select_by_visible_text(groupID)

    driver.find_element_by_id("userEmail").send_keys(email)

    driver.find_element_by_id("userPassword").clear()

    driver.find_element_by_id("userPassword").send_keys(password)

    driver.find_element_by_id("userPasswordConfirm").clear()

    driver.find_element_by_id("userPasswordConfirm").send_keys(password)

    driver.find_element_by_xpath("//button[@type='submit']").click()

    time.sleep(5)

    try:
        driver.get(host)
    except Exception as e:
        time.sleep(1)


# Start test steps

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)

logger.info('Start Add Users test.')

time.sleep (1)

for user in users:

    createUser(logger, user[0], user[1], user[2], user[3])

    if CONFIG.LONGRUN:

        time.sleep(1200)
    else:

        time.sleep(1)

login.logout(logger, wdriver=driver)

for user in users:

    try:

        login.login(logger, host, driver, usr=user[2], pssword=user[1])
    except Exception as e:
        print ("login failed")
        time.sleep(4)

    try:
        login.logout(logger, wdriver=driver)
    except Exception as e:
        print("logout failed: %" % user[2] )
        time.sleep(4)

logger.info('End Add Users test.')


driver.quit()
