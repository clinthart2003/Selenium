from selenium import webdriver
from selenium.webdriver.support.select import Select
from config import CONFIG
from signatureImport import signatures
from selenium.webdriver.chrome.options import Options
import logging
import time, login, os, sys

script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s %(message)s', level=logging.INFO)
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

cwd = os.getcwd()

sigs = [
    ["Cybox", "cybox_signatures.xml"],
    ["Cybox", "CybOX_Iran-Oil_Dynamic 23 related indicators.xml"],
    ["OpenIOC", "sha1-tests-6f17e1c8-044a-4d93-ab3f-9c5cf98472fc.ioc"],
    ["OpenIOC", "73e74d9ecbee3c53f8bde56ef72ccda6b3f91fc57397dbc45e6470eeadc03d6c-report.open.ioc"],
    ["Snort", "community.rules_Signatures_01.txt"],
    ["Snort", "community.rules_Signatures_02.txt"],
    ["Snort", "emerging-attack_response_61_signatures.rules"]
       ]

# Run test steps here

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)

time.sleep(5)

for signature in sigs:
    logger.info("Start Yara import test")
    time.sleep(2)

    signat = cwd + os.sep + 'files' + os.sep + 'Signatures' + os.sep + signature[1]

    # print (signat)

    signatures(logger, driver, signature[0], signat)

    if CONFIG.LONGRUN:

        time.sleep(1200)
    else:

        time.sleep(2)

logger.info("End Yara import test")

# close the browser window
driver.quit()
