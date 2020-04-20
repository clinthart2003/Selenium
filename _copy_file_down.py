import paramiko
from config import CONFIG
from os.path import expanduser

ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(CONFIG.server, username=CONFIG.username)

# use shell for running the script to make-object-set
channel = ssh.invoke_shell()

home = expanduser("~")
file = 'tq_driver.py_fixed'
download = r'%s/PycharmProjects/setests/TQ_Setup/files/%s' % (home, file)
remote_path = '/usr/lib/python2.7/site-packages/tqMSSfeed/'
remote_file = '%s/%s' % (remote_path, file)


# path, filename = os.path.split(download)

def download_file():

    # print (download)
    # open connection to server
    # session.exec_command("sudo -k dmesg")
    ftp_client = ssh.open_sftp()

    # download file to local Downloads dir
    ftp_client.get(remote_file, download)

    # close ftp
    ftp_client.close()


download_file()
