from selenium import webdriver
from time import sleep
from config import CONFIG
from selenium.webdriver.chrome.options import Options
from login import login
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


def incident_create(driver, iname, isource, idesc, iobjective):

    """
    driver = webdriver
    cname = string for ttp title
    cdesc =  formatted string description for incident.  Can be very long and detailed.
    cobjective = formatted objective for incident  Can be very long and detailed.
    """

    success = False

    while success is False:
        try:

            driver.find_element_by_id("primary-nav-create").click()
            success = True

        except Exception as e:

            logger.critical("Button is not there, retry.")

    driver.find_element_by_xpath("(//li[@permissions='incident'])").click()
    # driver.find_element_by_xpath("(//a[@ng-switch-when='incident'])").click()

    sleep(5)

    driver.find_element_by_id("modal_value").clear()

    driver.find_element_by_id("modal_value").send_keys(iname)

    # change iframe to access description frame.
    driver.switch_to.frame(driver.find_elements_by_tag_name('iframe')[0])

    if len(idesc) == 0:

        driver.find_element_by_css_selector('body').send_keys(iname)

    else:

        driver.find_element_by_css_selector('body').send_keys(idesc)

    # return to primary frame.
    driver.switch_to.default_content()

    # driver.find_element_by_id("modal_sources").clear()
    # driver.find_element_by_id("modal_sources").send_keys(isource)

    # Add source
    driver.find_element_by_xpath("//span[@ng-show='!form.swapSourceOption']").click()
    sleep(1)
    driver.find_element_by_xpath("//sources-form/div/div/input").send_keys(isource)

    driver.find_element_by_xpath(
        "//DIV[@class='modal-footer ng-scope']//BUTTON[@type='submit'][@form='addCustomObjectForm']").click()

    sleep(8)

# Run test steps here

incidents = [['Attack against Threatq.com', 'wannacry attack', 'Gain full access to Threatq', CONFIG.SOURCE],
             ['Attack against Google.com', 'russian bear', 'Gain full access to Threatq', CONFIG.SOURCE],
             ['Attack against Yahoo.com', 'wannacry attack', 'Gain full access to yahoo', CONFIG.SOURCE],
             ['Attack against Amazon.com', 'wannacry attack', 'Gain full access to amazon', CONFIG.SOURCE],
             ['Attack against Oracle.com', 'crazygal attack', 'Gain full access to Oracle', CONFIG.SOURCE],
             ['Attack against Bobshome.com', 'delete all attack', 'Delete HDD @ bobshome', CONFIG.SOURCE],
             ['Attack against teamunicorndogs.com', 'krack attack', 'Gain full access to teamunicorndogs', CONFIG.SOURCE],
             ['Attack against privatenetwork.com', 'wannacry attack', 'Gain full access to privatenetwork', CONFIG.SOURCE]
            ]

login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)

logger.info('Start Incident create test.')

sleep(8)

for incident in incidents:

    incident_create(driver, incident[0], incident[3], incident[1], incident[2])

    print(incident)

logger.info('End Incident create test.')

driver.quit()