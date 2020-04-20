import paramiko
from config import CONFIG
import time
import sys, os
import logging
script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)
logger = logging.getLogger('test')

remotepath = "/tmp"

icons = ["crown.svg"]

jsonfile = 'dynamicicons.json'


ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(CONFIG.server, username=CONFIG.username)

# use shell for running the script to make-object-set
channel = ssh.invoke_shell()


def dynamicIcons(svgfile):

    # Copy all the files needed to setup an Investigations server

    localfile = "./files/svg/%s" % svgfile
    remotepath = "/tmp/%s" % svgfile
    ftp_client = ssh.open_sftp()
    ftp_client.put(localfile, remotepath)
    ftp_client.close()


def setup_custom_objects(jsonfile):
    # setup the custom objects

    ftp_client = ssh.open_sftp()
    localfile = "./files/%s" % jsonfile
    remotepath = "/tmp/%s" % jsonfile
    print (localfile)
    ftp_client.put(localfile, remotepath)
    ftp_client.close()

    cmd = 'sudo cp /tmp/%s /var/www/api/database/seeds/data/custom_objects' % jsonfile
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd, get_pty=True)
    # answer yes when prompted to overwrite
    ssh_stdin.write('y\n')
    exit_status = ssh_stdout.channel.recv_exit_status()
    if exit_status == 0:
        for line in ssh_stdout.readlines():
            print (line.strip('\n'))
    else:
        print("Error with cp stix file")
        print(ssh_stderr.readlines())


    channel.send('sudo su -' + '\n')
    resp = channel.recv(9999)
    print (resp)

    cmd = r'cd /var/www/api'
    channel.send(cmd + '\n')
    channel.send('pwd' + '\n')
    resp = channel.recv(9999)
    print(resp)
    time.sleep(2)

    cmd = r'php artisan threatq:make-object-set --file=/var/www/api/database/seeds/data/custom_objects/%s' % jsonfile
    channel.send(cmd + '\n')
    buff = ''
    while not "Application is now live" in buff:
        resp = channel.recv(9999)
        buff += resp
        print(resp)

    cmd = 'sudo cd /var/www/api; sudo php /var/www/api/artisan threatq:update-permissions'
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd, get_pty=True)
    exit_status = ssh_stdout.channel.recv_exit_status()
    if exit_status == 0:
        for line in ssh_stdout.readlines():
            print (line.strip('\n'))
    else:
        print("Error updating permissions")
        print(ssh_stderr.readlines())


    cmd = 'sudo cd /var/www/api; sudo php /var/www/api/artisan threatq:update-permissions'
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd, get_pty=True)
    exit_status = ssh_stdout.channel.recv_exit_status()
    if exit_status == 0:
        for line in ssh_stdout.readlines():
            print (line.strip('\n'))
    else:
        print("Error updating permissions")
        print(ssh_stderr.readlines())

    cmd = 'sudo php /var/www/api/artisan up; sudo supervisorctl -c /etc/tq-supervisord.cfg restart tqcontroller'
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd, get_pty=True)
    exit_status = ssh_stdout.channel.recv_exit_status()
    if exit_status == 0:
        for line in ssh_stdout.readlines():
            print (line.strip('\n'))
    else:
        print("Error trying to restart the system")
        print(ssh_stderr.readlines())

def addStatus():
    co = ["testing"]

    for i in co:
        cmd = r'sudo php /var/www/api/artisan threatq:custom-object-status --code=%s --status Status --new-name=Active' % i
        print cmd
        channel.send(cmd + '\n')
        buff = ''
        while "successfully" not in buff:
            resp = channel.recv(9999)
            buff += resp
            print(resp)

        cmd = r'sudo php /var/www/api/artisan threatq:custom-object-status --code=%s --status Status --new-name=Hold' % i
        channel.send(cmd + '\n')
        buff = ''
        while "successfully" not in buff:
            resp = channel.recv(9999)
            buff += resp
            print(resp)

        cmd = r'sudo php /var/www/api/artisan threatq:custom-object-status --code=%s --status Status --new-name=Complete' % i
        channel.send(cmd + '\n')
        buff = ''
        while "successfully" not in buff:
            resp = channel.recv(9999)
            buff += resp
            print(resp)

        cmd = r'sudo php /var/www/api/artisan threatq:custom-object-status --code=%s --status Status --new-name=Closed' % i
        channel.send(cmd + '\n')
        buff = ''
        while "successfully" not in buff:
            resp = channel.recv(9999)
            buff += resp
            print(resp)


def addStatus2():
    co = ["testing"]

    for i in co:

        cmd = r'sudo php /var/www/api/artisan threatq:custom-object-status --code=%s --status Priority --new-name=High' % i
        print cmd
        channel.send(cmd + '\n')
        buff = ''
        while "successfully" not in buff:
            resp = channel.recv(9999)
            buff += resp
            print(resp)

        cmd = r'sudo php /var/www/api/artisan threatq:custom-object-status --code=%s --status Priority --new-name=Medium' % i
        print cmd
        channel.send(cmd + '\n')
        buff = ''
        while "successfully" not in buff:
            resp = channel.recv(9999)
            buff += resp
            print(resp)

        cmd = r'sudo php /var/www/api/artisan threatq:custom-object-status --code=%s --status Priority --new-name=Low' % i
        channel.send(cmd + '\n')
        buff = ''
        while "successfully" not in buff:
            resp = channel.recv(9999)
            buff += resp
            print(resp)


def bounceWorkers():
    cmd = r'sudo systemctl restart threatq-jobs.target'
    print cmd
    channel.send(cmd + '\n')
    resp = channel.recv(9999)
    print(resp)
    time.sleep(2)


"""
# Run test steps here
for svgfile in icons:
    dynamicIcons(svgfile)

setup_custom_objects(jsonfile)
"""
addStatus()
addStatus2()

cmd = 'sudo cd /var/www/api; sudo php /var/www/api/artisan threatq:update-permissions'
ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd, get_pty=True)
exit_status = ssh_stdout.channel.recv_exit_status()
if exit_status == 0:
    for line in ssh_stdout.readlines():
        print (line.strip('\n'))
else:
    print("Error updating permissions")
    print(ssh_stderr.readlines())

bounceWorkers()

ssh.close()
