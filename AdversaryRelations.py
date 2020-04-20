from selenium import webdriver
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.keys import Keys
from random import randrange
import time, login, Relationship, csv
from config import CONFIG
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

host = CONFIG.HOST

def adversaryRelations (driver, adver ):

    driver.get (host + r'adversaries/' + str(adver) + '/details')

    time.sleep(3)

    ### Adding relationships
    ind = randrange(1, len(indicators))
    adver = randrange(1, len(adversaries))
    signat = randrange(1, len(signatures))
    event = randrange(1, len(events))
    attach = randrange(1, len(attachment))

    relatList = [adversaries[adver][0], indicators[ind][0], signatures[signat][2], attachment[attach][0], events[event][0]]

    Relationship.relationship(logger, driver, relatList)



'''
The csv files are created by exporting date from the Beta advanced search [Export] feature.  Simply export data with the
default columns, modify the names to match the below expected files, and run the scripts.
'''

with open('files/ThreatQ-indicator.csv') as I:
    reader = csv.reader(I)

    indicators = list(reader)

with open('files/ThreatQ-signature.csv') as S:
    reader = csv.reader(S)

    signatures = list(reader)

with open('files/Adversaries/adversary-Export_short.csv') as A:
    reader = csv.reader(A)

    adversaries = list(reader)

with open('files/ThreatQ-attachment.csv') as a:
    reader = csv.reader(a)

    attachment = list(reader)

with open('files/ThreatQ-event.csv') as E:
    reader = csv.reader(E)

    events = list(reader)

# Run test stesp

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)
logger.info('Start Adversary Relations create test.')

time.sleep(5)

for i in range(1, 15, 1):

    adversaryRelations(driver, i)

    if CONFIG.LONGRUN:

        time.sleep(1200)
    else:

        time.sleep(2)

login.logout(logger, wdriver=driver)

logger.info('End Adversary Relations create test.')
time.sleep(10)


driver.quit()