from selenium import webdriver
from config import CONFIG
from selenium.webdriver.chrome.options import Options
import time, login, os
import logging
import stix_parser

script = "stix_import_2_0.py.log"
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

cwd = os.getcwd()

stix = [
        ["files/STIX/STIX_2/chafer.json", "20"],
        ["files/STIX/STIX_2/cobaltgang.json", "20"],
        ["files/STIX/STIX_2/cozyduke.json", "20"],
        ["files/STIX/STIX_2/darkhydrus.json", "20"],
        ["files/STIX/STIX_2/dragonok.json", "20"],
        ["files/STIX/STIX_2/emissary_panda.json", "20"],
        ["files/STIX/STIX_2/gorgongroup.json", "20"],
        ["files/STIX/STIX_2/inception.json", "20"],
        ["files/STIX/STIX_2/menupass.json", "20"],
        ["files/STIX/STIX_2/muddywater.json", "20"],
        ["files/STIX/STIX_2/Oasis_Stix2_0 .json", "20"],
        ["files/STIX/STIX_2/oilrig.json", "20"],
        ["files/STIX/STIX_2/patchwork.json", "20"],
        ["files/STIX/STIX_2/pickaxe.json", "20"],
        ["files/STIX/STIX_2/rancor.json", "20"],
        ["files/STIX/STIX_2/reaper.json", "20"],
        ["files/STIX/STIX_2/rockegroup.json", "20"],
        ["files/STIX/STIX_2/scarletmimic.json", "20"],
        ["files/STIX/STIX_2/simple-playbook.json", "20"],
        ["files/STIX/STIX_2/sofacy.json", "20"],
        ["files/STIX/STIX_2/stix.2.0.example.defining.campaign.threat.actors.intrustion.sets.stix", "20"],
        ["files/STIX/STIX_2/stix.2.0.example.granular.markings.stix", "20"],
        ["files/STIX/STIX_2/stix.2.0.example.identifying.a.threat.actor.profile.stix", "20"],
        ["files/STIX/STIX_2/stix.2.0.example.indicator.file.hash.stix", "20"],
        ["files/STIX/STIX_2/stix.2.0.example.indicator.malicious.url.stix", "20"],
        ["files/STIX/STIX_2/stix.2.0.example.indicator.sighting.stix", "20"],
        ["files/STIX/STIX_2/stix.2.0.example.json.stix", "20"],
        ["files/STIX/STIX_2/stix.2.0.example.marking.definitions.stix", "20"],
        ["files/STIX/STIX_2/stix.2.0.example.observed.data.sighting.stix", "20"],
        ["files/STIX/STIX_2/stix.2.0.example.threat.actor.leveraging.attack.patterns.and.malware.stix", "20"],
        ["files/STIX/STIX_2/STIX_2_Sightings.json", "20"],
        ["files/STIX/STIX_2/th3bug.json", "20"],
        ["files/STIX/STIX_2/tick.json", "20"],
        ["files/STIX/STIX_2/very-simple-playbook.json", "20"],
        ["files/STIX/STIX_2/windshift.json", "20"]
        ]


# Run test steps here

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)

time.sleep(8)

count = 1

logger.info("Start STIX import test")


for STIX in stix:
    time.sleep(5)
    stixfile = cwd + os.sep + STIX[0]
    print (stixfile)

    try:

        status = stix_parser.stix_import(driver, logger, stixfile, count)

    except Exception as e:
        logger.warn('%s %s ' % (e, str(STIX[0])))
        print(e)

    driver.get(host)
    # print ("sleep 5")
    time.sleep(5)

    count += 1
    # print count
    if CONFIG.LONGRUN:

        time.sleep(1200)

    if count % 80 == 0:

        login.logout(logger, driver)
        time.sleep(1)
        login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)


logger.info("End STIX import test")

# close the browser window
driver.quit()
