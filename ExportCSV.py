from selenium import webdriver
from config import CONFIG
from time import sleep
from time import time
from login import login
from glob import glob
from os.path import expanduser
from selenium.webdriver.chrome.options import Options
import sys, os
import logging
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
# sleep(2)

host = CONFIG.HOST


searches = {"1000 Indicators" : "#55320668c9e5aefb4bb14728c21e1e42",
            "2000 Indicators" : "#4866aca3f5b6dbacfee5ffef8b34f734",
            "3000 Indicators" : "#ad56e118dfe8c6f601d82c3628b201c6",
            "4000 Indicators" : "#efed537368ec7c340f95ff0b3a23fcf5",
            "4000 less Sources Col" : "#f2abd8184627cb3f8512660b07b6a30e",
            "3000 less Sources Col" : "#fe44ac04689fc2f54777b11528cdcc77",
            "2000 less Sources Col" : "#f50b696d96fb2a9bc1e1b6efd61233b0",
            "1000 less Sources Col" : "#2bc8b83fe57f14071a1c1c46717f7fb4"
            }


# locate users home dir and where "Downloads dir may be hiding
# Downloads dir is where the csv files will be created.  

home = expanduser("~")

workingDir = home + os.sep + "Downloads"

filename = ''   # Define variable to be used for csv renaming.

results = []


def csv_export(urlhash, k):

    driver.get(host)

    sleep(3)

    driver.get(host + r'/advanced-search' + urlhash)

    sleep(5)

    # driver.find_element_by_partial_link_text("Indicators").click()
    driver.find_element_by_xpath("//SPAN[text()='Indicators']").click()

    sleep(3)

    try:

        # driver.find_element_by_xpath("(//BUTTON[@type='button'][text()='Export'][text()='Export'])[4]").click()
        driver.find_element_by_xpath("//BUTTON[text()=' Export']").click()

    except Exception as e:

        logger.warn("button not here for some reason")

    t2 = time()

    os.chdir(workingDir)

    # loop over the download dir and look for the temp csv file.
    # When file is done the temp extension is removed and download is finished.
    # track time from when Export button is clicked to when tmp file is finshed.

    nofile = True

    while nofile:

        if len(glob("*.csv")) == 0 and len(glob("*.csv.crdownload")) == 0:

            # print("Waiting for Download to start.")
            sleep(.1)

        elif len(glob("*.csv.crdownload")) >= 1:

            # filename = glob("*.csv.crdownload")[0]

            # print("Download started")

            sleep(.1)

        elif len(glob("*.csv")) >= 1:

            filename = glob("*.csv")[0]

            # print("Download completed")
            nofile = False

    t1 = time()

    # compute bps for csv creation
    bits = os.path.getsize(glob("*.csv")[0])

    sec = t1 - t2

    kbps = (bits / sec) / 1024

    # Print results to console for debug purposes.
    print("Saved Search: %s, " % k + str(t1 - t2) + " (sec), " + str(bits/1000) + " (KiB), " + str(kbps) + " (KiB/s)")

    # Add results to list that will be written to a file at the end
    result = "Saved Search: %s, " % k + str(t1 - t2) + " (sec), " + str(bits/1000) + " (KiB), " + str(kbps) + " (KiB/s)"
    logger.critical(result)
    # results.append("Saved Search: %s, " % k + str(t1 - t2) + " (sec), " + str(bits/1000) + " (KiB), " + str(kbps) + " (KiB/s)")


def move_csv():
    """
    After each csv file is created from the download, we need
    to move it to done.  Just keeps thinks cleaner that way.

    """
    os.chdir(workingDir)
    
    # Move created file to Done 
    for f in glob("*.csv"):
        
        filename = workingDir + os.sep + f 
        
        new_filename = workingDir + os.sep + 'done' + os.sep + f
        
        os.rename(filename, new_filename)

        # print("moved: " + f)

sleep(3)


def main():

    login(logger, host, driver, usr=CONFIG.TQUSER[0], pssword=CONFIG.TQUSER[1])
    logger.info('Start Export to CSV test.')
    sleep(5)

    startingDir = os.getcwd()

    run_count = 5

    # move any lingering csv files out of Download dir.
    move_csv()

    # run the test.
    for k, urlhash in searches.items():

        count = 1

        while count <= run_count:

            csv_export(urlhash, k)

            move_csv()

            count += 1

    sleep(2)

    # Write final results to file

    os.chdir(startingDir)

    with open("./results/ExportCSV_%s.txt" % str(int(time())), 'w+') as f:

        for line in results:

            f.write(line + '\n')

    logger.info('End Export to CSV test.')

    driver.quit()

if __name__ == "__main__":

    main()