from selenium import webdriver
from config import CONFIG
from time import sleep
from time import time
from login import login
from glob import glob
from os.path import expanduser
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options


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
sleep(2)

host = CONFIG.HOST

# start Demo script
# login with standar threatq user.
driver.get("https://chart-sr.threatq.com/")

login.login(host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1])

sleep(3)

# open Advanced-Search UI
driver.find_element_by_css_selector("i.fas.fa-search").click()

driver.find_element_by_link_text("Early access to our new search").click()

sleep(4)

# Add Swift and Finance to keyword search
driver.find_element_by_id("advancedSearchMention").clear()
driver.find_element_by_id("advancedSearchMention").send_keys("Swift")
# driver.find_element_by_id("advancedSearchMention").send_keys(${KEY_ENTER})
driver.find_element_by_id("advancedSearchMention").send_keys(Keys.ENTER)
driver.find_element_by_id("advancedSearchMention").clear()
driver.find_element_by_id("advancedSearchMention").send_keys("Finance")
# driver.find_element_by_id("advancedSearchMention").send_keys(${KEY_ENTER})
driver.find_element_by_id("advancedSearchMention").send_keys(Keys.ENTER)
# driver.find_element_by_id(advancedSearchMention).click()

sleep(5)

# Click the "Indicators" menu
driver.find_element_by_xpath("(//SPAN[@class='ng-binding'][text()='Indicators'])").click()

# Create Investigation
driver.find_element_by_id("primary-nav-create").click()
driver.find_element_by_link_text("Investigation").click()

driver.find_element_by_id("InvestigationName").clear()
driver.find_element_by_id("InvestigationName").send_keys("SWIFT threats to my bank")
driver.find_element_by_id("InvestigationPriority").click()
driver.find_element_by_id("InvestigationPriority").click()
Select(driver.find_element_by_id("InvestigationPriority")).select_by_visible_text("Escalated")
driver.find_element_by_id("InvestigationPriority").click()
Select(driver.find_element_by_id("InvestigationPriority")).select_by_visible_text("Normal")
driver.find_element_by_id("InvestigationVisible").click()
Select(driver.find_element_by_id("InvestigationVisible")).select_by_visible_text("Hidden")
driver.find_element_by_id("InvestigationVisible").click()
Select(driver.find_element_by_id("InvestigationVisible")).select_by_visible_text("Visible")
driver.find_element_by_id("InvestigationDescription").click()
driver.find_element_by_id("InvestigationDescription").clear()
driver.find_element_by_id("InvestigationDescription").send_keys("Looking at SWIFT related indicators")
driver.find_element_by_xpath("//button[@type='submit']").click()

# Add Lazarus Group
driver.find_element_by_xpath("//input[@type='text']").clear()
driver.find_element_by_xpath("//input[@type='text']").send_keys("Lazarus Group")
# driver.find_element_by_xpath("//input[@type='text']").send_keys(Keys.ENTER)
driver.find_element_by_xpath("//a[contains(text(),'Lazarus Group')]").click()
