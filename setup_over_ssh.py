import paramiko
from config import CONFIG
import time


remotepath = "/tmp"

ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(CONFIG.server, username="root", password="threatquotientthreatquotient")

# use shell for running the script to make-object-set
channel = ssh.invoke_shell()


def setup_memstats():

    # Copy all the files needed to setup an Investigations server


    ftp_client = ssh.open_sftp()
    localfile = "./tqmemstats.sh"
    remotepath = "/tmp/tqmemstats.sh"
    ftp_client.put(localfile, remotepath)

    # ftp_client = ssh.open_sftp()
    localfile = "./tqmemstats.service"
    remotepath = "/tmp/tqmemstats.service"
    ftp_client.put(localfile, remotepath)

    # ftp_client = ssh.open_sftp()
    localfile = "./pymem.py"
    remotepath = "/tmp/pymem.py"
    ftp_client.put(localfile, remotepath)

    # ftp_client = ssh.open_sftp()
    localfile = "./toprc"
    remotepath = "/tmp/.toprc"
    ftp_client.put(localfile, remotepath)

    #close ftp client
    ftp_client.close()

    # Move the files to their appropriate location:
    cmd = 'sudo cp /tmp/tqmemstats.sh /root'
    print (' ')
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')
    cmd = 'sudo chmod +x /root/tqmemstats.sh'
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')

    cmd = 'sudo cp /tmp/pymem.py /root'
    print (' ')
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')
    cmd = 'sudo chmod +x /root/pymem.py'
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')

    cmd = 'sudo cp /tmp/tqmemstats.service /etc/systemd/system'
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')
    cmd = 'sudo chmod +x /etc/systemd/system/tqmemstats.service'
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')

    cmd = 'sudo cp /tmp/.toprc /root'
    print (' ')
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')

    # get the memory log working
    cmd = 'sudo systemctl daemon-reload'
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')

    cmd = 'sudo systemctl enable tqmemstats.service'
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')

    cmd = 'sudo systemctl restart tqmemstats.service'
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')

#  upload files to the server and start tqmemstat service.
setup_memstats()  ## This is not needed anymore.  DevOPs deployed this in Ansible.

ssh.close()
