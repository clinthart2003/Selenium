from selenium import webdriver
from selenium.webdriver.support.select import Select
import unittest, time, re
from config import CONFIG
import logging

def relationship (logger, driver, relationshipList=[]):

    time.sleep(2)

    driver.find_element_by_id("object-detail-actions-button").click()

    time.sleep(1)

    # driver.find_element_by_link_text(" Add Relationship").click()
    driver.find_element_by_xpath('//button[@ng-click="$ctrl.addContext(\'relation\')"]').click()

    time.sleep (5)

    # driver.find_element_by_xpath("//input[@type='text']").send_keys(asvers)
    for rel in relationshipList:

        driver.find_element_by_xpath("//INPUT[@id='generalSearch']").send_keys(rel)

        time.sleep(4)

        try:
            driver.find_element_by_xpath("(//A[@href=''])[1]").click()
        except Exception as e:
            # print ("Relationship not found")
            driver.find_element_by_xpath("//INPUT[@id='generalSearch']").clear()
            continue

        # time.sleep(1)

    try:
        driver.find_element_by_xpath("//button[@type='submit']").click()
    except Exception as e:
        print ("Use other button xpath")
        driver.find_element_by_xpath("//button[@type='button'][text()='Add']").click()

    time.sleep (4)
