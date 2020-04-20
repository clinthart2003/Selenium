from selenium import webdriver
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.keys import Keys
from config import CONFIG
import time, login
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
time.sleep(2)

host = CONFIG.HOST

'''
This test only run on a TIE VM.
'''

host = CONFIG.HOST

'''
Set longrun to True if you want to sleep for 20 min between major events.  
This test was created due to users being logged out even when they were 
active in the browsers.  This will help identify what areas of the product
are not resetting the keepalive timer.
'''

login.login(host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1])



def main ():

    driver.find_element_by_xpath("//a[contains(text(),'Indicators')]").click()

    time.sleep(4)

    #driver.find_element_by_xpath("//a[contains(text(),'Active')]").click()
    driver.find_element_by_link_text("Active").click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Indicators')]").click()

    time.sleep(4)

    driver.find_element_by_link_text("Candidate").click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Indicators')]").click()

    time.sleep(4)

    driver.find_element_by_link_text('Delete').click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Indicators')]").click()

    time.sleep(4)

    driver.find_element_by_link_text('Expired').click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Indicators')]").click()

    time.sleep(4)

    driver.find_element_by_link_text('Indirect').click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Indicators')]").click()

    time.sleep(4)

    driver.find_element_by_link_text('Quarantine').click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Indicators')]").click()

    time.sleep(4)

    driver.find_element_by_link_text('Recorded').click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Indicators')]").click()

    time.sleep(4)

    driver.find_element_by_link_text('Research').click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Indicators')]").click()

    time.sleep(4)

    driver.find_element_by_link_text('Review').click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(@href, 'indicators/overview')]").click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(@href, 'indicators/network')]").click()

    time.sleep(4)

    Select(driver.find_element_by_xpath("//div[2]/div/div/div/div/div[2]/form/select")).select_by_visible_text("100")

    time.sleep(4)

    driver.find_element_by_xpath("//div[2]/div/div/div[2]/table/tbody/tr/td/span").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[2]/div/div/div[2]/table/tbody/tr[3]/td/span").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[2]/div/div/div[2]/table/tbody/tr[4]/td/span").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[2]/div/div/div[2]/table/tbody/tr[5]/td/span").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[2]/div/div/div[2]/table/tbody/tr[6]/td/span").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[2]/div/div/div[2]/table/tbody/tr[7]/td/span").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[2]/div/div/div[2]/table/tbody/tr[8]/td/span").click()

    time.sleep(4)

    driver.find_element_by_tag_name('body').send_keys(Keys.CONTROL + Keys.HOME)

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Host')]").click()

    time.sleep(4)

    driver.find_element_by_xpath("//td[2]/a/span").click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Indicators')]").click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Events')]").click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'New Events')]").click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Adversaries')]").click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Files')]").click()

    time.sleep(4)

    driver.find_element_by_xpath("//button[4]/span").click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Signatures')]").click()

    time.sleep(4)

    driver.find_element_by_xpath("//select").click()

    time.sleep(4)

    Select(driver.find_element_by_xpath("//select")).select_by_visible_text("100")

    time.sleep(4)

    driver.find_element_by_css_selector("i.fa.fa-search").click()

    time.sleep(4)

    driver.find_element_by_xpath("//a[contains(text(),'Early access to our new search')]").click()

    time.sleep(4)

    driver.find_element_by_partial_link_text("Adversaries (").click()

    time.sleep(4)

    driver.find_element_by_partial_link_text("Events (").click()

    time.sleep(4)

    driver.find_element_by_partial_link_text("Files (").click()

    time.sleep(4)

    driver.find_element_by_partial_link_text("Indicators (").click()

    time.sleep(4)

    driver.find_element_by_partial_link_text("Signatures (").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[2]/button/i").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[3]/div/button/i").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[3]/button/i").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[4]/button/i").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[5]/button/i").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[6]/button/i").click()

    time.sleep(4)

    driver.find_element_by_xpath("//div[7]/button/i").click()

    time.sleep(4)

    driver.find_element_by_xpath("//img[@alt='ThreatQ']").click()

    time.sleep(4)



if __name__ == "__main__":

    t2 = time.time()

    print ("Test started: " + str(t2))

    while True:

        main()

        t1 = time.time() - t2

        print ("Running for: " + str(t1) + " (sec)")

