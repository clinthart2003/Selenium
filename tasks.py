from selenium import webdriver
from selenium.webdriver.support.select import Select
# from selenium.webdriver.common.keys import Keys
from random import randrange
import time, login, Relationship, csv
# from selenium.webdriver import ActionChains
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


users = [["Clint.Hart", "justanotheruserpassword!!!", "Clint.Hart@threatq.com", "ThreatQ Maintenance Account", "Malware Attack", "High", "To Do"],
         ["john.doe", "justanotheruserpassword!!!", "john.doe@threatq.com", "Primary Contributor Access","DDoS Attack", "Medium", "Review"],
         ["Jack.Reacher", "justanotheruserpassword!!!", "Jack.Reacher@thereatq.com", "Administrative Access", "Wannacry Incident", "Low", "Review"],
         ["John.Wick", "justanotheruserpassword!!!", "john.Wick@theratq.com", "Administrative Access", "Unknown breach", "High", "To Do"],
         ["threatq@threatq.com", "threatquotientthreatquotient", "threatq@threatq.com", "ThreatQ Maintenance Account", "North Korian Attack", "High", "To Do"],
         ["James.Bond", "justanotheruserpassword!!!","James.Bond@threateq.com", "Read Only Access", "Russian Intrusion", "Medium", "In Progress"],
         ["Han Solo", "justanotheruserpassword!!!","James.Bond@threateq.com", "Read Only Access", "notpetya", "Low", "Review"],
         ["tqadmin@tq.com", "ChangeMePlease!", "tqadmin@threatq.com", "ThreatQ Maintenance Account", "Malware Attack", "High", "To Do"],
         ["maintenance@tq.com", "ChangeMePlease!", "maintenance@threatq.com", "Primary Contributor Access", "DDoS Attack", "Medium", "Review"],
         ["contributor@tq.com", "ChangeMePlease!", "contributor@thereatq.com", "Administrative Access", "Wannacry Incident", "Low", "Review"],
         ["readonly@tq.com", "ChangeMePlease!", "readonly@theratq.com", "Administrative Access", "Unknown breach", "High", "To Do"]
         ]


'''
Set longrun to True if you want to sleep for 20 min between major events.  
This test was created due to users being logged out even when they were 
active in the browsers.  This will help identify what areas of the product
are not resetting the keepalive timer.
'''
# longrun = True

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

with open('files/ThreatQ-adversary.csv') as A:
    reader = csv.reader(A)

    adversaries = list(reader)

with open('files/ThreatQ-attachment.csv') as a:
    reader = csv.reader(a)

    attachment = list(reader)

with open('files/ThreatQ-event.csv') as E:
    reader = csv.reader(E)

    events = list(reader)


def create_task(taskName='', user='', date='', desc='', priority='High', state='In Progress'):

    success = False

    while success is False:
        try:

            driver.find_element_by_id("primary-nav-create").click()
            success = True

        except Exception as e:

            logger.critical("Button is not there, retry.")

    # driver.find_element_by_xpath("(//a[contains(text(),'Task')])[2]").click()

    driver.find_element_by_xpath("(//li[@permissions='tasks'])").click()

    # driver.find_element_by_link_text("Task").click()
    time.sleep(5)

    driver.find_element_by_xpath("//input[@type='text']").click()
    driver.find_element_by_xpath("//input[@type='text']").clear()
    driver.find_element_by_xpath("//input[@type='text']").send_keys(taskName)

    driver.find_element_by_xpath("(//input[@type='text'])[2]").clear()
    driver.find_element_by_xpath("(//input[@type='text'])[2]").send_keys(user)

    try:
        driver.find_element_by_link_text(user).click()
        # driver.find_element_by_xpath("(//a[contains(text(), user)])").click()
    except Exception as e:
        # print ("Relationship not found")
        time.sleep(1)

    # driver.find_element_by_(user).click()
    # driver.find_element_by_xpath("(//input[@type='text'])[2]").send_keys(user)

    Select(driver.find_element_by_xpath("//select")).select_by_visible_text(state)
    Select(driver.find_element_by_xpath("//select[@id='taskPrioritySelect']")).select_by_visible_text(priority)

    driver.find_element_by_xpath("(//input[@type='text'])[4]").click()
    driver.find_element_by_xpath("(//input[@type='text'])[4]").clear()
    driver.find_element_by_xpath("(//input[@type='text'])[4]").send_keys(date)

    driver.switch_to.frame(driver.find_elements_by_tag_name('iframe')[0])
    driver.find_element_by_css_selector('body').click()
    driver.find_element_by_css_selector('body').send_keys(desc)
    driver.switch_to.default_content()


    # Adding relationships
    ind = randrange(1, len(indicators))
    adver = randrange(1, len(adversaries))
    signat = randrange(1, len(signatures))
    event = randrange(1, len(events))
    attach = randrange(1, len(attachment))


    # relatList = [indicators[ind], adversaries[adver], signatures[signat], events[event]]
    relatList = [adversaries[adver][0], indicators[ind][0],
                 signatures[signat][2], attachment[attach][0],
                 events[event][0]]


    for rel in relatList:

        driver.find_element_by_xpath("//input[@id='generalSearch']").send_keys(rel)
        time.sleep(7)
        try:
            driver.find_element_by_xpath("(//A[@href=''])[1]").click()
            time.sleep(1)
            # driver.find_element_by_xpath("//BUTTON[@class='btn.green'][text()='Add']")
            driver.find_element_by_xpath("(//button[@type='button'])[2]").click()
        except Exception as e:
            print ("Relationship not found")
            driver.find_element_by_xpath("//input[@id='generalSearch']").clear()
            continue


    # Submit task form
    driver.find_element_by_xpath("//button[@type='submit']").click()

    time.sleep(3)

    # New set of objects
    ind = randrange(1, len(indicators))
    adver = randrange(1, len(adversaries))
    signat = randrange(1, len(signatures))
    event = randrange(1, len(events))
    attach = randrange(1, len(attachment))

    time.sleep(1)

    # Code change prevents the details page from dispaying.  Must
    # now locate the link and click it to access the deails page

    bannerlink = '\"' + taskName + '\"'
    # print (bannerlink)

    try:
        time.sleep(2)
        driver.find_element_by_link_text(bannerlink).click()
    except Exception as e:
        print ("Could not find Task Link")

    time.sleep(3)

    relatList = [adversaries[adver][0], indicators[ind][0], 
                 signatures[signat][2], attachment[attach][0], 
                 events[event][0]]

    # print (relatList)

    Relationship.relationship(logger, driver, relatList)

    time.sleep(2)

# Run test steps here

login.login(logger, host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1], SAML=CONFIG.SAML)
logger.info('Start Tasks create test.')

time.sleep(5)

tasknumber = 41

for usr in users:

    taskName = "New Attack: " + str(tasknumber)
    # print [usr[0]]
    create_task(taskName, user=usr[0], date='01/15/2020', desc=usr[4], priority=usr[5], state=usr[6])

    if CONFIG.LONGRUN:

        time.sleep(1200)
    else:

        time.sleep(2)

    tasknumber += 1

login.logout(logger, wdriver=driver)

logger.info('End Tasks create test.')

driver.quit()
