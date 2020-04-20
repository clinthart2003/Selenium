from selenium import webdriver
from config import CONFIG
import time
import paramiko
import os
from selenium.webdriver.chrome.options import Options
from login import login

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

ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(CONFIG.server, username=CONFIG.username)
sftp = ssh.open_sftp()

# use shell for running the script to make-object-set
channel = ssh.invoke_shell()

# define current working dir
cwd = os.getcwd()


def setup_memscrape():

    # Copy all the files needed to setup an Investigations server
    ftp_client = ssh.open_sftp()
    # use 1 second performance collector
    localfile = cwd + os.sep + "files" + os.sep + "tqmemscrape.sh"
    remotepath = "/tmp/tqmemscrape.sh"

    ftp_client.put(localfile, remotepath)
    ftp_client.close()

    ftp_client = ssh.open_sftp()
    localfile = "./tqmemscrape.service"
    remotepath = "/tmp/tqmemscrape.service"

    ftp_client.put(localfile, remotepath)
    ftp_client.close()

    # Move the files to their appropriate location:
    cmd = 'sudo cp /tmp/tqmemscrape.sh /root'
    print (' ')
    ssh.exec_command(cmd)
    print (cmd)
    print (' ')
    cmd = 'sudo chmod +x /root/tqmemscrape.sh'
    ssh.exec_command(cmd)
    print (cmd)
    print (' ')

    cmd = 'sudo cp /tmp/tqmemscrape.service /etc/systemd/system'
    ssh.exec_command(cmd)
    print (cmd)
    print (' ')
    cmd = 'sudo chmod +x /etc/systemd/system/tqmemscrape.service'
    ssh.exec_command(cmd)
    print (cmd)
    print (' ')

    # Load the service file
    cmd = 'sudo systemctl daemon-reload'
    ssh.exec_command(cmd)
    print (cmd)
    print (' ')

    cmd = 'sudo systemctl enable tqmemscrape.service'
    ssh.exec_command(cmd)
    print (cmd)
    print (' ')


def clear_logs():

    logfile = '/var/log/threatq-memory-%s.log' % CONFIG.hostname
    cmd = r'sudo rm -rf %s' % logfile
    channel.send(cmd + '\n')
    buff = ''
    resp = channel.recv(9999)
    buff += resp
    print(resp)


def strt_stp_service(runstop):

    cmd = r'sudo systemctl %s tqmemscrape.service' % runstop
    channel.send(cmd + '\n')
    buff = ''
    resp = channel.recv(9999)
    buff += resp
    print(resp)


def main():

    # Login to server
    login(host, driver, usr=CONFIG.USER[0], pssword=CONFIG.USER[1])

    # Stop the running tqmemscrape service
    strt_stp_service('stop')

    # upload 1 second tqmemscrap.sh
    setup_memscrape()

    # Remove any existing log file
    clear_logs()

    # Start the tqmemscrape service
    strt_stp_service('start')

    # Allow the server to normalize the data for 60 seconds before running test
    time.sleep(60)

    comptime = 0

    # Run Import tests
    # comment out the test you want to run.
    # import Signatures
    import Indicators
    # import Events_Relationships

    # allow processes and memory to normalize
    time.sleep(60)

    # Stop the tqmemscrape service
    strt_stp_service('stop')

    # Collect performance data from server
    # CSVcreate

    print(comptime)


if __name__ == "__main__":

    main()

    driver.quit()

    # Collect stats
    import CSVcreate

    sftp.close()

    ssh.close()