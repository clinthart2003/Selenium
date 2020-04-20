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


def coa_create(driver, coasname, coasource, coasdesc):

    """
    driver = webdriver
    host = string host url i.e. https://te-12257.threatq.com/
    coasname = string for ttp title
    coasdesc =  string description for ttp.  Can be very long and detailed.
    """

    success = False

    while success is False:
        try:

            driver.find_element_by_id("primary-nav-create").click()
            success = True

        except Exception as e:

            logger.critical("Button is not there, retry.")

    driver.find_element_by_xpath("(//li[@permissions='course_of_action'])").click()

    sleep(5)

    driver.find_element_by_id("modal_value").clear()

    driver.find_element_by_id("modal_value").send_keys(coasname)

    # change iframe to access description frame.
    driver.switch_to.frame(driver.find_elements_by_tag_name('iframe')[0])

    if len(coasdesc) == 0:

        driver.find_element_by_css_selector('body').send_keys(coasname)

    else:

        driver.find_element_by_css_selector('body').send_keys(coasdesc)

    # return to primary frame.
    driver.switch_to.default_content()

    # Add source
    driver.find_element_by_xpath("//span[@ng-show='!form.swapSourceOption']").click()
    sleep(1)
    driver.find_element_by_xpath("//sources-form/div/div/input").send_keys(coasource)

    driver.find_element_by_xpath(
        "//DIV[@class='modal-footer ng-scope']//BUTTON[@type='submit'][@form='addCustomObjectForm']").click()
    sleep (4)



# Run test steps here

login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)
logger.info('Start COA create test.')

sleep(5)

"""
csv file format:  value, sources, alias 
we will use alias for the desc since there is no aliase field in the create UI.
"""
with open('files/ThreatQ-coa.csv') as coafile:
    reader = csv.reader(coafile)
    coas = list(reader)

for index in range(1, len(coas)):
    coa_create(driver, coas[index][0], coas[index][1], coas[index][2])

    print (coas[index])

logger.info('End COA create test.')

driver.quit()