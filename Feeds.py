from selenium import webdriver
from selenium.webdriver.support.select import Select
from config import CONFIG
import time, login
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


'''
This script will attempt to use the super user from ldap.py.  If that script has not run it will use the 
standard TQUSER in config.py. 
'''

Feeds = [
         ["abuse.ch Feodo IP Blocklist", r"//connector-panel[3]/div/div/div/button/i"],
         ["abuse.ch SSLBL (Extended)", r"//connector-panel[6]/div/div/div/button/i"],
         ["Bambenek Consulting - C2 All Indicators", r"//connector-panel[19]/div/div/div/button/i"],
         ["Babenek Consulting - High-Confidence C2 All Indicators", "//connector-panel[29]/div/div/div/button/i"],
         ["CI Army List IPs", "//connector-panel[67]/div/div/div/button/i"],
         ["Cybercrime Tracker", "//connector-panel[68]/div/div/div/button/i"],
         ["Emerging Threats Block IPs", "//connector-panel[69]/div/div/div/button/i"],
         ["Emerging Threats Compromised IPs", "//connector-panel[70]/div/div/div/button/i"],
         ["hpHosts FQDN", "//connector-panel[71]/div/div/div/button/i"],
         ["???", "//connector-panel[72]/div/div/div/button/i"],
         ["???", "//connector-panel[73]/div/div/div/button/i"],
         ["???", "//connector-panel[74]/div/div/div/button/i"],
         ["MITRE Enterprise ATT&CK", "//connector-panel[75]/div/div/div/button/i"],
         ["MITRE MOBILE ATT&CK", "//connector-panel[76]/div/div/div/button/i"],
         ["MITRE PRE-ATT&CK", "//connector-panel[77]/div/div/div/button/i"],
         ["MITRE PRE-ATT&CK", "//connector-panel[78]/div/div/div/button/i"]
         #["www.dan.me.uk Tor Node List", "//connector-panel[90]/div/div/div/button/i"]
        ]


# Run test steps here

try:
    login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)
    print ("ldap user logged in.")
except Exception as e:
    login.login(logger, host, driver, usr=CONFIG.TQUSER[0], pssword=CONFIG.TQUSER[1], SAML=CONFIG.SAML)
    print ("Standard TQUSER logged in.")

logger.info('Start Feeds test.')

# main settings menu
driver.find_element_by_id("primary-user-menu").click()

# feeds landing page
driver.find_element_by_link_text("Incoming Feeds").click()

time.sleep(3)

# OSINT list
driver.find_element_by_link_text("OSINT (83)").click()

time.sleep(4)

for feed in Feeds:

    driver.find_element_by_xpath(feed[1]).click()

    if CONFIG.LONGRUN:

        time.sleep(1200)
    else:

        time.sleep(5)

driver.get(host)

logger.info('End Feeds test.')

driver.quit()