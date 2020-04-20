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
    # ssh.connect(CONFIG.server, username='root', password='threatquotientthreatquotient')
    ssh.connect(CONFIG.server, username=CONFIG.username)


# use shell for running the script to make-object-set
channel = ssh.invoke_shell()

def object_audit_duplicates():

    """Audit-duplicate-indicators command:

    php audit-duplicates.php

    """

    t2 = time.time()
    cmd = r'cd /var/www/api && sudo sudo php artisan threatq:object-audit -z --duplicates --duplicates-limit=2000 ' \
          r'--password-protect indicator'
    print ("please wait while audit procedes...")
    channel.send(cmd + '\n')
    time.sleep(3)

    #Send the password to protect the zip file
    channel.send('threatq\n')
    time.sleep(2)
    channel.send('threatq\n')

    buff = ''
    while not "Audit Completed" in buff:
        resp = channel.recv(9999)
        buff += resp
        print(resp)

    t1 = time.time()
    total = t1 -t2
    print ("Total time to audit duplicates: %s") % total

    # get backup file

    ftp_client = ssh.open_sftp()

    for filename in ftp_client.listdir('/tmp/object-audit'):
        if filename.startswith('object-audit-'):
            print filename
            localfile = r'./files/object-audit/' + filename
            remotepath = '/tmp/object-audit/' + filename
            print("File copy...")
            ftp_client.get(remotepath, localfile)
            cmd = 'sudo rm -rf %s' % remotepath
            channel.send(cmd + '\n')
            print ("%s deleted after copy" % remotepath)

            print ("File copy done!")

    ftp_client.close()

    return total

    #

def main():

        object_audit_duplicates()


if __name__ == "__main__":


    main()

    ssh.close()