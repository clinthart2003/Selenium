from selenium import webdriver
from selenium.webdriver.support.select import Select
import unittest, time, re
from time import sleep
import logging
import paramiko

def cpy_config(logger, HOST, server, username):

    configfile = 'ldap.conf'

    ssh = paramiko.SSHClient()
    ssh.load_system_host_keys()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect(server, username=username)

    # use shell for running the script to make-object-set
    # channel = ssh.invoke_shell()


    # Copy all the files needed to setup an Investigations server

    localfile = "./files/%s" % configfile
    remotepath = "/tmp/%s" % configfile
    ftp_client = ssh.open_sftp()
    ftp_client.put(localfile, remotepath)
    ftp_client.close()

    # Move the files to their appropriate location:
    cmd = 'sudo cp /tmp/%s /etc/openldap' % configfile
    print (cmd)
    print (' ')
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    exit_status = ssh_stdout.channel.recv_exit_status()
    if exit_status == 0:
        logger.info(ssh_stdout.read())

    else:
        logger.warn(ssh_stderr.read())


    # check the file is correct
    cmd = 'cat /etc/openldap/%s' % configfile
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
    exit_status = ssh_stdout.channel.recv_exit_status()
    if exit_status == 0:
        logger.info(ssh_stdout.read())

    else:
        logger.warn(ssh_stderr.read())
