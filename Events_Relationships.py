from selenium import webdriver
from config import CONFIG
from random import *
import time, random, csv, login, Relationship, os
from selenium.webdriver.chrome.options import Options
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

cwd = os.getcwd()

# Run test steps here

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)
logger.info('Start Event Relationship create test.')

'''
The csv files are created by exporting date from the Beta advanced search [Export] feature.  Simply export data with the
default columns, modify the names to match the below expected files, and run the scripts.
'''

with open('files/Adversaries/ThreatQ-adversary.csv', 'rb') as f:

    reader = csv.reader(f)

    Adversaries = list(reader)

with open('files/ThreatQ-indicator.csv') as I:

    reader = csv.reader(I)

    indicators = list(reader)

with open('files/ThreatQ-signature.csv') as S:

    reader = csv.reader(S)

    signatures = list(reader)

with open('files/ThreatQ-adversary.csv') as A:

    reader = csv.reader(A)

    adver = list(reader)

with open('files/ThreatQ-attachment.csv') as a:

    reader = csv.reader(a)

    attach = list(reader)


location = driver.current_url

# Make sure to change the range value to match the number of events in the system

for i in range (1, 232, 1):

    eventurl = location + 'events/%s/details' % i

    driver.get(eventurl)

    advers = randrange(1, len(adver))

    indicator = randrange(1, len(indicators))

    signature = randrange(1, len(signatures))

    attachment = randrange(1, len(attach))

    print eventurl

    time.sleep(5)

    relatList = [adver[advers][0], indicators[indicator][0], signatures[signature][2], attach[attachment][0]]

    try:

        Relationship.relationship(logger, driver, relatList)

    except Exception as a:

        print ("Event URL was blank: %s" % eventurl)

    if CONFIG.LONGRUN:

        time.sleep(1200)
    else:

        time.sleep(2)

logger.info('End Events Relationship create test.')

# close the browser window
driver.quit()
