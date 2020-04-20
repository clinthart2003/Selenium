from selenium import webdriver
from selenium.webdriver.support.select import Select
from config import CONFIG
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
from selenium.webdriver.chrome.options import Options

import time, login
import traceback
import sys, os
import logging
script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)
logger = logging.getLogger('test')


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

host = CONFIG.HOST

def opetations_setup():

    driver.find_element_by_id("primary-user-menu").click()

    driver.find_element_by_link_text("Operations Management").click()


    # Virus Total
    driver.find_element_by_xpath("//collapsible-panel[3]/div/div/div").click()
    driver.find_element_by_xpath("(//input[@type='password'])[3]").click()
    driver.find_element_by_xpath("(//input[@type='password'])[3]").clear()
    driver.find_element_by_xpath("(//input[@type='password'])[3]").send_keys(
        "96025064cd78869c0ffe7d9b18da0dea14bb8337cf0f88bb656c694705fc2d93")
    driver.find_element_by_xpath("(//button[@type='button'])[7]").click()

    time.sleep(5)

    #Emerging Threats
    driver.find_element_by_xpath("//collapsible-panel[3]/div/div/div").click()
    driver.find_element_by_xpath("//collapsible-panel[2]/div/div/div").click()
    driver.find_element_by_xpath("(//input[@type='password'])[2]").click()
    driver.find_element_by_xpath("(//input[@type='password'])[2]").clear()
    driver.find_element_by_xpath("(//input[@type='password'])[2]").send_keys(
        "YmIwMzE1ZjVhOGM4NWIxNGQwM2FhYmYwYTkzYjNhZWUwZjVhMTViNDBlZWM4NjQy")
    driver.find_element_by_xpath("(//button[@type='button'])[5]").click()

    time.sleep(5)

    # Domain tools
    driver.find_element_by_xpath("//collapsible-panel[2]/div/div/div").click()
    driver.find_element_by_xpath("//collapsible-panel[1]/div/div/div").click()
    driver.find_element_by_xpath("//div[4]/button").click()
    time.sleep(3)
    driver.find_element_by_id("field-1-api_key").click()
    driver.find_element_by_id("field-1-api_key").clear()
    driver.find_element_by_id("field-1-api_key").send_keys("11344-67eb3-e796b-24436-000aa")
    driver.find_element_by_id("field-1-api_username").click()
    driver.find_element_by_id("field-1-api_username").clear()
    driver.find_element_by_id("field-1-api_username").send_keys("threatquotient-productdev")
    driver.find_element_by_xpath("(//button[@type='button'])[3]").click()
    driver.find_element_by_xpath("//collapsible-panel[1]/div/div/div/button/i").click()
    # driver.find_element_by_xpath("//div[4]/button").click()


    time.sleep(5)

    driver.find_element_by_xpath("//button/i").click()

    time.sleep(2)

# Run test steps here

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)

logger.info('Start Operations test')

time.sleep(1)

opetations_setup()

logger.info('End Operations test')

driver.quit()
