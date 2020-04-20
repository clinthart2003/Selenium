import paramiko
from config import CONFIG
import os

ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(CONFIG.server, username=CONFIG.username)
# ssh.connect(CONFIG.server, username='root', password='threatquotientthreatquotient')

# use shell for running the script to make-object-set
channel = ssh.invoke_shell()

# localfile = 'notificationGenerator.py'
# localfile = 'files/patch/tqAdversaryReader-3.1.2-py2-none-any.whl'

# localfiles = 'files/patch/tqAdversaryReader-3.1.2-py2-none-any.whl'
localfiles = ["./files/patch/tqAdversaryReader-3.1.2-py2-none-any.whl"
              #"./files/patch/te-22106-dupe-scoring.patch",
              #"./files/Feeds/tqMSSfeed-1.0.1-py2-none-any.whl",
              #"./files/Feeds/tqMSSfeed-2.1.0-py2-none-any.whl",
              #./files/Feeds/tq_driver.py",
              #"./files/patch/ThreatLibrarySearch.py"
              ]


def copy_file(localfile=''):

    path, filename = os.path.split(localfile)
    tmp = '/tmp/%s' % filename
    remotepath = '/root/%s' % filename

    # copy files up to server
    ftp_client = ssh.open_sftp()

    ftp_client.put(localfile, tmp)
    ftp_client.close()

    # copy file to dir
    tmpfile = '/tmp/%s' % filename
    cmd = 'sudo mv %s %s' % (tmpfile, remotepath)
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    print (cmd)
    print (' ')



    ftp_client.close()

for localfile in localfiles:

    copy_file(localfile)
