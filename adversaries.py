from selenium import webdriver
from config import CONFIG
import time, login
import csv
from selenium.webdriver.chrome.options import Options
import logging
import sys, os
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

    logger.warning('No valid Webdrive was provided. ')

# driver.set_window_size(1440, 1200)
driver.implicitly_wait(CONFIG.waittime)
# time.sleep(2)

host = CONFIG.HOST


'''
The csv files are created by exporting date from the Beta advanced search [Export] feature.  Simply export data with the
default columns, modify the names to match the below expected files, and run the scripts.
'''

with open('files/Adversaries/ThreatQ-adversary.csv', 'rb') as f:

    reader = csv.reader(f)

    Adversaries = list(reader)


def adversary(logger, advers=r"jack reacher", srcs=CONFIG.SOURCE):

    success = False

    while success is False:
        try:

            driver.find_element_by_id("primary-nav-create").click()
            success = True

        except Exception as e:

            logger.critical("Button is not there, retry.")


    time.sleep(.5)

    try:
        driver.find_element_by_xpath("(//a[@ng-switch-when='adversaries'])").click()

    except Exception as e:
        # Maybe FF is running, so try this
        driver.find_element_by_xpath("(//a[contains(@href, '')])[39]").click()
        logger.info("Used alternate xpath")

    time.sleep(2)

    driver.find_element_by_id("adversaryName").click()

    driver.find_element_by_id("adversaryName").clear()

    driver.find_element_by_id("adversaryName").send_keys(str(advers))

    # driver.find_element_by_id("adversarySource").clear()

    # driver.find_element_by_id("adversarySource").send_keys(str(srcs))

    # Add source
    driver.find_element_by_xpath("//span[@ng-show='!form.swapSourceOption']").click()
    time.sleep(1)
    driver.find_element_by_xpath("//sources-form/div/div/input").send_keys(srcs)

    driver.find_element_by_xpath("//button[@type='submit']").click()

    time.sleep(1)

    # if the adversary already exists you will get the link "Go to this adversary"
    # Ergo the adversary was successfully added
    try:
        driver.find_element_by_link_text("Go to this adversary").click()
        logger.info("Adversary already exists")
        time.sleep(1)

    except Exception as e:
        logger.info("Adversary created!")


# Execute test steps

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)

time.sleep(3)

count = 0

logger.info('Start Adversary create test')
for adver in Adversaries:

    # time.sleep(1)

    if count == 0:   # Skip header from CSV

        count += 1

    else:

        adversary(logger, adver[0], adver[3])

    if CONFIG.LONGRUN:

        time.sleep(1200)
    else:

        time.sleep(.1)

logger.info('Stop Adversary create test')
# close the browser window
driver.quit()
