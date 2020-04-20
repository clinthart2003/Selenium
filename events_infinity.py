from selenium import webdriver
from selenium.webdriver.support.select import Select
from config import CONFIG
from random import *
import time, random, csv, login, Relationship, os
from selenium.webdriver.chrome.options import Options
import logging, sys, os
script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)
logger = logging.getLogger('test')

if CONFIG.WEBDRIVER == "Chrome":
    _chrome_options = Options()
    _chrome_options.add_argument('--disable-infobars')
    driver = webdriver.Chrome(chrome_options=_chrome_options)

elif CONFIG.WEBDRIVER == "Firefox":

    driver = webdriver.Firefox()

else:

    print('No valid Webdrive was provided. ')

driver.set_window_size(1440, 1200)
driver.implicitly_wait(CONFIG.waittime)
# time.sleep(2)

host = CONFIG.HOST


def assoc_advers(asvers='Jack Reacher'):

    driver.find_element_by_id("add-context").click()

    time.sleep(1)

    driver.find_element_by_link_text("Relationship").click()

    time.sleep(1)

    # driver.find_element_by_xpath("//input[@type='text']").send_keys(asvers)
    driver.find_element_by_xpath("//INPUT[@type='text']").send_keys(asvers)

    time.sleep(1)

    # driver.find_element_by_xpath("//span/i").click()
    # driver.find_element_by_xpath("//INPUT[@type='text']").send_keys(Keys.ENTER)
    driver.find_element_by_xpath("(//A[@href=''])[1]").click()

    time.sleep(1)

    # driver.find_element_by_xpath("//button[@type='submit']").click()
    driver.find_element_by_xpath("//BUTTON[@type='submit'][text()='Add']").click()

    time.sleep(1)


def add_event(typeID=r"Watering Hole", Srce=CONFIG.SOURCE, Title=r"DDoS Attack", Mth="December", DDay="7", Year="2017", Time=r"01:44 PM", Zone=r"US/Central"):

    # Open Add Event UI
    time.sleep(1)

    select = True
    while select == True:
        try:
            driver.find_element_by_id("primary-nav-create").click()
            select = False
        except Exception as e:
            time.sleep(2)
            # print("Wait 2 seconds to continue")



    # driver.find_element_by_link_text("Event").click()

    # driver.find_element_by_xpath("(//li[@permissions='events'])").click()

    driver.find_element_by_xpath("(//a[text()=' Event'])").click()

    time.sleep(1)

    Select(driver.find_element_by_id("eventTypeId")).select_by_visible_text(typeID)

    # Add source
    # driver.find_element_by_xpath("//SPAN[1]").click()
    driver.find_element_by_xpath("//span[@ng-show='!form.swapSourceOption']").click()
    time.sleep(1)
    driver.find_element_by_xpath("//INPUT[@type='text']").send_keys(Srce)

    driver.find_element_by_id("eventTitle").click()

    driver.find_element_by_id("eventTitle").clear()

    driver.find_element_by_id("eventTitle").send_keys(Title)

    Select(driver.find_element_by_xpath("//select[contains(@ng-model, '.date.month')]")).select_by_visible_text(Mth)

    Select(driver.find_element_by_xpath("//select[@ng-model='$ctrl.date.year']")).select_by_visible_text(Year)

    driver.find_element_by_xpath("//input[contains(@ng-model, 'date.time')]").clear()

    driver.find_element_by_xpath("//input[contains(@ng-model, 'date.time')]").send_keys(Time)

    Select(driver.find_element_by_xpath("//select[contains(@ng-model, '.timezone')]")).select_by_visible_text(Zone)

    driver.find_element_by_xpath("//select[@ng-model='$ctrl.date.day']").click()

    Select(driver.find_element_by_xpath("//select[@ng-model='$ctrl.date.day']")).select_by_visible_text(DDay)

    driver.find_element_by_xpath("//button[@type='submit']").click()

    time.sleep(2)


def spearphish(efile=r'/files/Events/ChronArte_events_12_spearfish_objects_Apr.txt'):

    time.sleep(3)

    # driver.find_element_by_xpath("//button[@id='primary-nav-create']/span").click()
    driver.find_element_by_id("primary-nav-create").click()

    # driver.find_element_by_link_text("Event").click()

    # driver.find_element_by_xpath("(//li[@permissions='events'])").click()

    driver.find_element_by_xpath("(//a[text()=' Event'])").click()

    time.sleep(1)

    Select(driver.find_element_by_id("eventTypeId")).select_by_visible_text("Spearphish")

    driver.find_element_by_link_text("click to browse")

    driver.find_element_by_xpath("//input[@type='file']").send_keys(efile)

    time.sleep(3)

    driver.find_element_by_id("eventSource").send_keys(CONFIG.SOURCE)

    driver.find_element_by_xpath("//button[@type='submit']").click()

    time.sleep(5)

    Select(driver.find_element_by_id("indicatorStatusId")).select_by_visible_text("Active")

    driver.find_element_by_xpath("//div[3]/div/button").click()

    time.sleep(2)

    """
    try:
        driver.find_element_by_xpath("//div[3]/div/button").click()
    except Exception as e:
        print e

    time.sleep(2)
    """

    t2 = time.time()

    driver.find_element_by_xpath("//div[@class='col-xs-12']//button[text()='Create Spearphish']").click()

    # driver.find_element_by_partial_link_text("Create Spearphish").click()

    while True:

        URL = driver.current_url
        if "details" not in URL:
            time.sleep(1)

        else:

            time.sleep(3)
            break

    t1 = time.time()

    # calculate time to process file
    timeComplete = t1 - t2

    print ("Import %s has completed in: %s seconds") % (efile, str(timeComplete))

    return timeComplete


# List data to use for required fields.
months = [["October", "2017"],["November", "2017"],["December", "2017"],["January", "2018"], ["February", "2018"], ["March", "2018"], ["April", "2018"],
          ["May", "2018"], ["June", "2018"], ["July", "2018"], ["August", "2018"], ["September", "2018"], ["October", "2018"],
          ["November", "2018"],["December", "2018"],["January", "2019"], ["February", "2019"], ["March", "2019"], ["April", "2019"],
          ["May", "2019"], ["June", "2019"], ["July", "2019"], ["August", "2019"], ["September", "2019"], ["October", "2019"],
          ["November", "2019"],["December", "2019"]
          ]

hrs = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']
ap = ['AM', 'PM']

cwd = os.getcwd()

phish = ["/files/Events/tqi-spearphish1.txt",
         "/files/Events/tqi-spearphish2.txt",
         "/files/Events/te-12232.txt",
         "/files/Events/Clint's Spearfish email phishing 01.txt"
        ]

# Event typs to use
eventType = ["Malware", "Watchlist", "DoS Attack", "Login Compromise",
             "Exfiltration", "Command and Control", "SQL Injection Attack", ]


# Run test steps here

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1])

time.sleep(1)

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

"""
for pfile in phish:

    # remove hardcoded folder location.
    phisfile = cwd + pfile
    # Create spearphish event
    spearphish(phisfile)

    if CONFIG.LONGRUN:

        time.sleep(1200)
    else:

        time.sleep(1)
"""

# Crate Events Begin here
# Event number starts with eventount
eventcount = 100

while True:

    for month in months:

            for event in eventType:

                for hr in hrs:

                    x = sample(hrs, 1)

                    y = sample(ap, 1)

                    title = "Attack Event: " + str(eventcount)
                    print title
                    # Create new Event
                    add_event(event, CONFIG.SOURCE, Title=title, Mth=month[0],
                              DDay=str(random.randint(1, 28)), Year=month[1],
                              Time=x[0] + ":44 " + y[0], Zone="US/Central")

                    if CONFIG.LONGRUN:

                        time.sleep(1200)
                    else:

                        time.sleep(1)

                    eventcount += 1

# close the browser window
driver.quit()
