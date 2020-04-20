from selenium.webdriver.support.select import Select
from selenium.webdriver.common.keys import Keys
import time
from config import CONFIG
import os


def stix_import(driver, logger, stixfile, count):

    success = False

    # split filename and path to use for tags and test name.
    path, filename = os.path.split(stixfile)

    while success is False:
        try:

            driver.find_element_by_id("primary-nav-create").click()
            success = True

        except Exception as e:

            logger.critical("Button is not there, retry.")

    driver.find_element_by_link_text("STIX Parser").click()

    time.sleep(3)

    driver.find_element_by_link_text("click to browse")

    driver.find_element_by_xpath("//input[@type='file']").send_keys(stixfile)

    time.sleep(2)

    t2 = time.time()

    driver.find_element_by_xpath("//button[@type='submit']").click()

    while True:

        URL = driver.current_url

        if "object-import" not in URL:

            time.sleep(.5)

        else:

            time.sleep(.5)

            break

        if "No data was parsed" in driver.page_source:
            raise Exception('No data was parsed.')
        else:
            time.sleep(.5)

        if "0 objects found" in driver.page_source:
            raise Exception('0 objects found.')
        else:
            time.sleep(.5)

        if "There was a problem" in driver.page_source:
            raise Exception('There was an problem uploading file.')
        else:
            time.sleep(.5)

        if "Unable to parse file" in driver.page_source:
            raise Exception ('Unable to parse file error.')
        else:
            time.sleep(.5)

        timer = time.time()

        if timer - t2 >= 600:
            raise Exception ('Import timeout error!!!!')

    t1 = time.time()
    logger.critical("Parse File: %s has completed in: %s seconds", stixfile, str(t1 - t2))

    driver.find_element_by_id("importName").clear()
    driver.find_element_by_id("importName").send_keys("QA Test %s" % filename)

    # Add Source
    driver.find_element_by_xpath("//span[@ng-show='!form.swapSourceOption']").click()
    time.sleep(1)
    driver.find_element_by_xpath("//sources-form/div/div/input").send_keys(CONFIG.SOURCE)

    try:
        Select(driver.find_element_by_id("indicatorStatusSelect")).select_by_visible_text("Review")
    except Exception as e:
        logger.info ("Indicator Status not Present.")

    try:
        Select(driver.find_element_by_id("signatureStatusSelect")).select_by_visible_text("Review")
    except Exception as e:
        logger.info ("Indicator Status not Present.")

    # page down to bottom 2 elements
    driver.find_element_by_tag_name('body').send_keys(Keys.PAGE_DOWN)

    driver.find_element_by_id("importComment").clear()
    driver.find_element_by_id("importComment").send_keys("Automation import of %s" % filename)

    # Some filenames are > 50 chars and tags can't be greater len(50).
    if len(filename) >= 51:
        tag = (filename[:48] + '..')
    else:
        tag = filename

    driver.find_element_by_xpath("(//input[@permissions='attachments_tags'])").send_keys("%s" % tag)
    driver.find_element_by_xpath("(//input[@permissions='attachments_tags'])").send_keys(u'\ue007')
    t2 = time.time()

    driver.find_element_by_xpath("(//button[@type='submit'])").click()

    while True:

        URL = driver.current_url

        if URL == CONFIG.HOST:
            # print("URL is Home!")
            break
        else:
            time.sleep(1)
            # print (URL)
            # print("Waiting for URL!")

        if "error retrieving records" in driver.page_source:
            raise Exception('Error retrieving records seen.')
        else:
            time.sleep(.1)

    t1 = time.time()

    logger.critical("Import file: %s has completed in: %s seconds", stixfile, str(t1 - t2))

    time.sleep(1)

    return 'Pass'