from selenium import webdriver
import csv
from config import CONFIG
from selenium.webdriver.chrome.options import Options
from login import login
from time import sleep
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
# sleep(2)

host = CONFIG.HOST


def aps_create(logger, driver, value, description, source):


    success = False

    while success is False:
        try:

            driver.find_element_by_id("primary-nav-create").click()
            success = True

        except Exception as e:

            logger.critical("Button is not there, retry.")

    sleep(3)

    driver.find_element_by_xpath("(//li[@permissions='attack_pattern'])").click()

    sleep(5)

    driver.find_element_by_id("modal_value").clear()

    driver.find_element_by_id("modal_value").send_keys(value)

    # change iframe to access description frame.
    driver.switch_to.frame(driver.find_elements_by_tag_name('iframe')[0])

    if len(description) == 0:

        driver.find_element_by_css_selector('body').send_keys(value)

    else:
        description = unicode (description, errors='replace')

        driver.find_element_by_css_selector('body').send_keys(description)
        # print (description)

    # return to primary frame.
    driver.switch_to.default_content()

    # Add source
    driver.find_element_by_xpath("//span[@ng-show='!form.swapSourceOption']").click()
    sleep(1)
    driver.find_element_by_xpath("//sources-form/div/div/input").send_keys(source)

    driver.find_element_by_xpath(
        "//DIV[@class='modal-footer ng-scope']//BUTTON[@type='submit'][@form='addCustomObjectForm']").click()

    sleep(15)


# Run test steps here

login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)
logger.info('Start Attack Pattern create test.')

sleep(5)

"""
csv file format:  value, sources, alias 
we will use alias for the desc since there is no aliase field in the create UI.
"""
with open('files/ThreatQ-Attack_Pattern.csv') as ap:
    reader = csv.reader(ap)
    aps = list(reader)

for index in range(1, len(aps)):
    aps_create(logger, driver, aps[index][0], aps[index][1], aps[index][2])

    logger.info(aps[index])

logger.info('End Attack Pattern create test.')

driver.quit()