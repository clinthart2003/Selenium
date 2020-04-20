import paramiko
from config import CONFIG
import time


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

'''********************************************************************************************'''


remotepath = "/tmp"

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


def log_reader():

    # get laravel.log errors
    buffer = 99999
    cmd = r'sudo cat /var/www/api/storage/logs/laravel.log | egrep -A 10 "ERROR|DEBUG|WARNING"'
    print (cmd)
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd, timeout=3, get_pty=True)
    print(ssh_stdout.read())

    """
    # get silo log errors
    cmd = r"sudo cat /opt/solr/server/logs/solr.log | egrep -i 'error|shutdown|oom|exception|OutOfMemoryError|fatal'"
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd, timeout=3, get_pty=True)
    print (cmd)
    print(ssh_stdout.read())
    
    # get httpd errors
    cmd = 'sudo cat /var/log/httpd/error_log  | grep -A 10 Err'
    print (cmd)
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd, timeout=3, get_pty=True)
    print(ssh_stdout.read())

    
    # get feed error.log
    cmd = 'sudo cat /var/log/threatq/*_err.log | egrep -A 10 "ERROR"'
    print (cmd)
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd, timeout=3, get_pty=True)
    print(ssh_stdout.read())
    """


log_reader()
