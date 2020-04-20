from selenium import webdriver
from selenium.webdriver.support.select import Select
import unittest, time, re
from time import sleep
import logging

def login(logger, host, wdriver, usr="threatq@threatq.com", pssword="threatquotientthreatquotient", SAML=False):

    logger.info("logging into %s as:  %s" % (host, usr))
    # Login to Threatq
    wdriver.get(host + 'login')

    sleep(2)

    # sometimes we need to add the license for first time.

    try:
        licence_box = wdriver.find_element_by_name("threatq_key")

        licence_box.send_keys("lwVdXQRCGRmEUrsMaK2gTFIha4JRpUvdj9p5sXLEJuHQpfFbz7RCz5/etFw4baqcca43GrXIrw/KZyFeXbeSaIj5DPKXLwsNhnDAeYS+sby9ICrfq58VTw9fuprnjdIG7V7LgmsZ2SGuu70JWvmTxefehqs+MyYWdJMU/F5SY3s=")

        wdriver.find_element_by_css_selector("button[type=\"submit\"]").click()

    except Exception as e:

        # print ("Licnese Already entered")
        sleep(.1)

    if SAML:

        wdriver.find_element_by_xpath("//div[2]/button").click()
        time.sleep(5)
        wdriver.get(wdriver.current_url)
        print ("SAML Login Attempt")
        # wdriver.find_element_by_id("userNameArea").clear()
        wdriver.find_element_by_id("userNameInput").send_keys(usr)
        # wdriver.find_element_by_id("passwordArea").clear()
        wdriver.find_element_by_id("passwordInput").send_keys(pssword)
        wdriver.find_element_by_id("submitButton").click()
        time.sleep(5)

    else:
        wdriver.get(wdriver.current_url)

        login_field = wdriver.find_element_by_xpath("//input[@type='text']")

        login_field.clear()

        login_field.send_keys(usr)

        sleep(.1)

        password_field = wdriver.find_element_by_xpath("//input[@type='password']")

        password_field.clear()

        password_field.send_keys(pssword)

        submit_button = wdriver.find_element_by_xpath("//button[@type='submit']")

        submit_button.click()

        sleep(.1)

    try:
        wdriver.find_element_by_id("acceptance").click()

        wdriver.find_element_by_xpath("//BUTTON[@type='submit'][text()=' Accept and continue']").click()

    except Exception as e:

        logger.info ("Licnese Already entered")
        # sleep(1)


def logout(logger, wdriver):

    try:

        wdriver.find_element_by_xpath("//a[@id='individual-user-menu']/img").click()

    except Exception as e:

        wdriver.find_element_by_xpath("//a[@id='primary-user-menu']/i").click()

    wdriver.find_element_by_link_text("Log Out").click()
