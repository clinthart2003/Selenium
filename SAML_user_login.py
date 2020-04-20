from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from config import CONFIG
import time, login, os, sys
import logging


script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/SAML_user_login.log', format='%(asctime)s %(message)s', level=logging.INFO)
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

host = CONFIG.HOST

usr = sys.argv[1]
pssword = sys.argv[2]

print (usr)
print (pssword)

logger.info('Start Saml config test.')


try:
    login.login(logger, host, driver, usr, pssword, SAML=True)
except Exception as e:
    print("login attempt failed for user: %s" % usr )

time.sleep(5)

try:
    login.logout(logger, wdriver=driver)
except Exception as e:
    print("Logout not found for user: %s" % usr)
    driver.get(host)

time.sleep(1)

driver.quit()