from selenium import webdriver
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.keys import Keys
from config import CONFIG
from selenium.webdriver.chrome.options import Options
import time, login, os, sys
import logging
from selenium.webdriver.common.keys import Keys

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

driver.implicitly_wait(CONFIG.waittime)
# time.sleep(2)

email_list = ['clinthart@comcast.net',
              'clinthart69@gmail.com',
              'clint.hart@threatq.com'
                ]

host = CONFIG.HOST


def notification_mgmt(emailadd):

    if 'feed-health' not in driver.current_url:
        driver.get(host + "management/notifications/feed-health")

    time.sleep(2)

    driver.find_element_by_id("email-distribution-list-input").clear()
    driver.find_element_by_id("email-distribution-list-input").send_keys(emailadd)
    driver.find_element_by_id("email-distribution-list-input").send_keys(Keys.ENTER)


def enable_notification():

    if 'feed-health' not in driver.current_url:
        driver.get(host + "management/notifications/feed-health")

    time.sleep(2)

    try:
        driver.find_element_by_xpath("//a[@class='btn text'][@ng-click='toggleEnabled()']").click()
        # driver.find_element_by_xpath("(.//*[normalize-space(text()) and normalize-space(.)='Feed Health Notifications'])[1]/following::i[1]").click()
    except Exception as e:
        print ('Notifications already enabled.')

def disable_notifications():

    if 'feed-health' not in driver.current_url:
        driver.get(host + "management/notifications/feed-health")

    time.sleep(2)

    try:
        driver.find_element_by_xpath(
        "(.//*[normalize-space(text()) and normalize-space(.)='Disabled'])[1]/following::i[1]").click()
    except Exception as e:
        print ('Notifications already disabled')

def server_config():

    driver.get(host + "management/notifications/mail")
    time.sleep(5)

    # Server name
    driver.find_element_by_id("server-name-field").clear()
    driver.find_element_by_id("server-name-field").send_keys('smtp.office365.com')

    # SSL method
    driver.find_element_by_id("ssl-field").click()
    driver.find_element_by_xpath("//a[contains(text(),'TLS')]").click()

    # Credentials
    driver.find_element_by_id("username-field").clear()
    driver.find_element_by_id("username-field").send_keys('clint.hart@outlook.com')

    # from_email
    driver.find_element_by_id("from-address-field").clear()
    driver.find_element_by_id("from-address-field").send_keys('clint.hart@outlook.com')


    driver.find_element_by_xpath("//input[@type='password']").clear()
    driver.find_element_by_xpath("//input[@type='password']").send_keys("PennyJenny82!")


    driver.find_element_by_xpath("//div//button[@class='btn primary'][contains(text(),'Save Changes')]").click()


def test_email(emailadd):

    if "management/notifications/mail" not in driver.current_url:
        driver.get(host + "management/notifications/mail")

    time.sleep(2)

    driver.find_element_by_id("testEmail-field").clear()
    driver.find_element_by_id("testEmail-field").send_keys(emailadd)

    driver.find_element_by_xpath("//button[@class='btn success less-padding'][contains(text(),' Save and Send Test Email')]").click()


#### Test execution steps starts here!!!!!

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)

logger.info('Start Mail Server Config test')

time.sleep(3)

####  Setup email connection settings
server_config()

#### Test connection settings
test_email('clinthart@comcast.net')


#### Add emails to notification list
for email in email_list:

    notification_mgmt(email)

time.sleep(3)

#### Enable email notifications
enable_notification()

time.sleep(3)

login.logout(logger, wdriver=driver)

driver.quit()


