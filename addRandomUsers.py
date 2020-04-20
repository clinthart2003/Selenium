from selenium import webdriver
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.keys import Keys
from config import CONFIG
from selenium.webdriver.chrome.options import Options
import names, os, sys

import logging
script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)
logger = logging.getLogger('test')

import unittest, time, re, login

'''
Set longrun to True if you want to sleep for 20 min between major events.  
This test was created due to users being logged out even when they were 
active in the browsers.  This will help identify what areas of the product
are not resetting the keepalive timer.
'''

if CONFIG.WEBDRIVER == "Chrome":
    _chrome_options = Options()
    _chrome_options.add_argument('--disable-infobars')
    driver = webdriver.Chrome(chrome_options=_chrome_options)

elif CONFIG.WEBDRIVER == "Firefox":

    driver = webdriver.Firefox()

else:

    print('No valid Webdrive was provided. ')

driver.set_window_size(1440, 1200)
driver.implicitly_wait(5)
# time.sleep(2)

host = CONFIG.HOST

def createUser (userName='', password='', email = '', groupID = '' ):

    driver.find_element_by_xpath("//a[@id='primary-user-menu']/i").click()

    driver.find_element_by_link_text("User Management").click()

    time.sleep (3)

    driver.find_element_by_xpath("//div[2]/button").click()

    driver.find_element_by_id("userDisplayName").send_keys(userName)

    Select(driver.find_element_by_id("userGroupId")).select_by_visible_text(groupID)

    driver.find_element_by_id("userEmail").send_keys(email)

    driver.find_element_by_id("userPassword").clear()

    driver.find_element_by_id("userPassword").send_keys(password)

    driver.find_element_by_id("userPasswordConfirm").clear()

    driver.find_element_by_id("userPasswordConfirm").send_keys(password)

    driver.find_element_by_xpath("//button[@type='submit']").click()

    time.sleep(2)

    try:
        driver.get(host)
    except Exception as e:
        time.sleep(1)


# Start test steps

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1])

time.sleep (1)

while True:

    person = str(names.get_first_name()) + '.' + str(names.get_last_name())
    password = r"justanotheruserpassword!!!"
    email = str(person) + r'@threatq.com'
    role = "Maintenance Account"

    print (person + ' ' + email + ' ' +role )

    createUser(person, password, email, role)

    if CONFIG.LONGRUN:

        time.sleep(1200)
    else:

        time.sleep(1)

    login.logout(logger, wdriver=driver)

    # login.login(host, driver, str(email), str(password))
    login.login(logger, host, driver, str(email), str(password))

    time.sleep(1)


# time.sleep (1)


driver.quit()
