from selenium import webdriver
from selenium.webdriver.support.select import Select
import time, login
from config import CONFIG
from selenium.webdriver.chrome.options import Options
import sys, os
import logging
# script = os.path.basename(sys.argv[0])
script = "Indicators.py.log"
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


def indImport(indicatorType = r"STIX",
              indFile = r"/files/Indicators/cosive-stix-data-generator-20160712143345.xml",
              totali=200
              ):

    success = False

    while success is False:
        try:

            driver.find_element_by_id("primary-nav-create").click()
            success = True

        except Exception as e:

            logger.critical("Button is not there, retry.")

    time.sleep(.2)
    driver.find_element_by_link_text("Indicator Parser").click()

    time.sleep(3)

    # Add file to Indicator upload UI and provide file type
    driver.find_element_by_link_text("click to browse")
    driver.find_element_by_xpath("//input[@type='file']").send_keys(indFile)
    time.sleep(2)
    Select(driver.find_element_by_xpath("//form[@id='uploadIndicators']/div[3]/select")).select_by_visible_text(indicatorType)
    driver.find_element_by_xpath("//button[@type='submit']").click()

    # Wait for the next UI to be displayed
    while True:

        URL = driver.current_url
        if "information" not in URL:
            time.sleep(1)
        else:
            print ("Importing: " + indFile)
            break

    time.sleep (3)   # allow the page to fill before proceding.
    # Fill out form details
    driver.find_element_by_xpath("//LABEL[1]").click()
    Select(driver.find_element_by_id("globalStatus")).select_by_visible_text("Active")

    time.sleep(1)

    # Add source
    try:
        driver.find_element_by_xpath("//span[@ng-show='!form.swapSourceOption']").click()
        time.sleep(1)
        driver.find_element_by_xpath("//sources-form/div/div/input").send_keys(CONFIG.SOURCE)
    except Exception as e:
        driver.find_element_by_id("globalSource").send_keys(CONFIG.SOURCE)

    time.sleep(1)

    driver.find_element_by_xpath("//div[@class='footer-content']/button[@class='btn success ng-binding']").click()

    time.sleep(5)   # just give the UI time to return for next step that is dependent on STIX or FireEye
    URL = driver.current_url

    # There is an extra button to account for with STIX and FireEye
    if 'events' in URL:
        try:
            driver.find_element_by_xpath("//footer/div/button").click()

            #time.sleep (10)
        except Exception as e:
            print ("Indicator Status box not available here")
            time.sleep(.5)


    # pause to make sure the final verification page is up by looking for Finish Import button
    while True:
        footer = driver.find_element_by_tag_name('footer').text
        if "Finish Import" in footer:
            break
        else:
            time.sleep(1)

    # add assertion for total indicators parsed in file
    pgsource = driver.find_element_by_tag_name('body').text
    testText = "All (%s)" % totali

    try:
        assert(testText in pgsource)
    except Exception as e:
        logger.critical("Imported indicators is different than expected: %s, %s", indFile, testText)
        print ("Imported indicators is different than expected: %s, %s" % (indFile, testText))


    while True:

        URL = driver.current_url
        if "indicators" not in URL:
            time.sleep(.5)

        else:

            time.sleep(3)
            break

    t2 = time.time()

    driver.find_element_by_xpath("//div[@class='footer-content']/button[@class='btn success ng-binding']").click()

    # Check that the import has finished
    while True:
        URL = driver.current_url

        if "import" in URL:
            time.sleep(.1)
            # print URL
        else:
            t1 = time.time()
            done = t1 - t2
            logger.critical("Import %s has completed in: %s seconds", indFile, str(done))
            break

    return done
'''
passing the location of the signature file to the "open file browser" requires 
the full absolute path, relative paths will not work.
'''

cwd = os.getcwd()
# print (cwd)   #debug print

indFiles = [
           ["Generic Text / PDF", r"IPv6_addresses.txt", 18],
           ["FireEye Analysis", r"malware.object.xml", 8],
           ["Generic Text / PDF", r"rpt-apt28.pdf", 119],
           ["Generic Text / PDF", r"Lookout_Dark-Caracal_srr_20180118_us_v.1.0.pdf", 182],
           ["ThreatQ CSV File", r"network_indicators_whitepaper_dissection.csv", 2687],
           ["ThreatQ CSV File", r"Epic Turla.csv", 154],
           ["Generic Text / PDF", r"_Emerging Threats Compromised IPs.stix", 2486],
           ["Generic Text / PDF", r"Feodo IP Blocklist.stix", 1121],
           ["Cuckoo", r"cuckoo01.json", 12],
           ["Generic Text / PDF", r"cosive-stix-data-generator-20160712143345.xml", 59],
           ["Generic Text / PDF", r"IOC-2017-08-31_TEST-Sample-IOCs.csv", 12],
           ["Generic Text / PDF", r"IOC-2017-08-07_TEST-Sample-IOCs.csv", 86],
           ["ThreatQ CSV File", r"Indicators Threatq.csv", 154],
           ["Generic Text / PDF", r"isight-threatscape-16-00002254.pdf", 224],
           ["Generic Text / PDF", r"test.csv", 4],
           ["FireEye Analysis", r"oracle.xml", 7],
           ["FireEye Analysis", r"Alert_Details_example.com_20131025_181223.xml", 6],
           ["FireEye Analysis", r"65807620.xml", 14],
           ["Generic Text / PDF", r"iocbucket_54f6cdaa6e142294ed2aee4c1500aa41841f6101_emote 1 .ioc", 85]
           ]


login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)

logger.info('Start Indicators import test')
time.sleep(2)

for indicator in indFiles:

    indicat = cwd + os.sep + 'files' + os.sep + 'Indicators' + os.sep + indicator[1]

    indImport(indicator[0], indicat, indicator[2])

    if CONFIG.LONGRUN:

        time.sleep(1200)
    else:

        time.sleep(2)

# close the browser window
logger.info('End Indicator import test.')
driver.quit()
