from selenium.webdriver.support.select import Select
from selenium.webdriver.common.action_chains import ActionChains
from selenium.common.exceptions import NoSuchElementException
from config import CONFIG
from selenium.webdriver.common.keys import Keys
import time
import logging

def signatures (logger, driver, sigType = "Snort", sigFile = "community.rules_Signatures_01.txt"):

    success = False

    while success is False:
        try:

            driver.find_element_by_id("primary-nav-create").click()
            success = True

        except Exception as e:

            logger.critical("Button is not there, retry.")

    driver.find_element_by_xpath("//a[contains(@href, 'signatures/add/info')]").click()

    time.sleep(1)

    Select(driver.find_element_by_id("signatureType")).select_by_visible_text(sigType)

    time.sleep(1)

    # Add source
    driver.find_element_by_xpath("//span[@ng-show='!form.swapSourceOption']").click()
    time.sleep(1)
    driver.find_element_by_xpath("//sources-form/div/div/input").send_keys(CONFIG.SOURCE)

    driver.find_element_by_link_text("click to browse")

    driver.find_element_by_xpath("//input[@type='file']").send_keys(sigFile)

    time.sleep(1)

    Select(driver.find_element_by_xpath("//form[@id='signatureInfoForm']/div[2]/div/fieldset/div/select")).select_by_visible_text("Active")

    # scroll down to element to check it.
    driver.find_element_by_tag_name('body').send_keys(Keys.PAGE_DOWN)
    time.sleep(2)

    # check to see if signatureName object is present
    try:

        driver.find_element_by_id("signatureName").send_keys(sigType)

    except NoSuchElementException:

        logger.info("signaturename doesn't exist here")


    # check to see if the indicatorInfoForm is in the UI
    try:

        Select(driver.find_element_by_xpath("//DIV[@class='row']//SELECT[@class='form-control ng-valid ng-touched ng-not-empty ng-dirty ng-valid-parse']")).select_by_visible_text("Active")

    except Exception as e:

        logger.info("Indicator Status box not available here")


    try:

        Select(
            driver.find_element_by_xpath("//div[@id='indicatorInfoForm']/fieldset/div/select")).select_by_visible_text("Active")

    except Exception as e:

        logger.info("Extracted Indicators box not available")

    driver.find_element_by_xpath("//button[@form='signatureInfoForm']").click()

    time.sleep(5)

    t2 = time.time()

    # final submit button
    driver.find_element_by_xpath("//form[@id='addSignatureForm']/div[3]/button[2]").click()

    t2 = time.time()

    while True:

        URL = driver.current_url
        if "overview" not in URL:
            time.sleep(1)

        else:

            time.sleep(1)
            break

        t1 = time.time()

        if (t1 - t2) > 20:
            raise Exception('Error processing file.')

    t1 = time.time()

    # calculate time to process file
    timeComplete = t1 - t2

    logger.critical("Import %s has completed in: %s seconds", sigFile, str(timeComplete))

    time.sleep(4)

    return timeComplete
