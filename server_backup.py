import paramiko
from config import CONFIG
import time


remotepath = "/tmp"

'''*********************************** Constants Section **************************************'''
# IP Address of server you are connecting to.
server = ''

# DNS name of the server you are connecting to.
server_name = CONFIG.server

# SSH user name needed to connect to server via SSH.
ssh_user = CONFIG.username

# Passphrase of the SSH key you are using to connect to server.
passphrase = ''

# Path to the SSH key that you are using to connect to server.
ssh_pkey_const = ''

# Username to log into TQ application.
email = 'threatq@threatq.com'

# Password to log into the TQ applications.
password = 'threatquotientthreatquotient'

# Object type to use in bulk delete (currently only supports indicator).
object_type = 'indicator'

# Status ID desired to use when creating indicators through the indicator consume endpoint.
status_id = '1'
'''********************************************************************************************'''


ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
if passphrase:
    k = paramiko.RSAKey.from_private_key_file(ssh_pkey_const, password=passphrase)
    ssh.connect(CONFIG.server, username=CONFIG.username, pkey=k)
else:
    ssh.connect(CONFIG.server, username=CONFIG.username)


# use shell for running the script to make-object-set
channel = ssh.invoke_shell()


def server_backup():

    cmd = 'sudo screen -S backup'
    channel.send(cmd + '\n')
    time.sleep(2)

    cmd = r'cd /var/www/api && sudo php artisan threatq:backup'
    # cmd = r'cd /var/www/api && sudo php artisan threatq:backup --exclude-solr'
    print ("please wait while backup procedes...")
    channel.send(cmd + '\n')
    time.sleep(3)
    # channel.send('Y' + '\n')
    channel.send(CONFIG.MYSQLROOT + '\n')
    time.sleep(2)
    channel.send('/tmp\n')
    buff = ''
    while not "Application is now live" in buff:
        resp = channel.recv(9999)
        buff += resp
        print(resp)


    # get backup file

    ftp_client = ssh.open_sftp()

    for filename in ftp_client.listdir('/tmp'):
        if filename.endswith('.tgz'):
            print filename
            localfile = r'./files/' + filename
            remotepath = '/tmp/' + filename
            print("File copy...")
            ftp_client.get(remotepath, localfile)

            print ("File copy done!")

    ftp_client.close()

def main():

    server_backup()

if __name__ == "__main__":


    main()

    ssh.close()