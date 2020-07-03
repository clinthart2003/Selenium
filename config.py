'''
HOST = the TQ server to run against.  Format must be in 'https://364-ova02.threatq.com/'
TQUSER = the initial user to use for login.py for very first run.  After which "USER" will be used in all scripts
USER = This is the primary user that will be used.  This user and other users are setup with 'addUsers.py' and 'ldap.p'
SOURCE = this is used to set the source box on several import UIs.  Not important what the string is.
LONGRUN = will add a 20 min pause between method runs in each of the setup scripts.  this is used to
WEBDRIVER = Defines which browser will be used across all setup scripts
'''
import subprocess

class CONFIG:

    username = 'clint.hart'

    hostname = 'te-22257'      # Selenium automation will run against this host

    SAML = False

    # hostname = '10.20.0.151'   # qa-platinum01

    IPADDR = '44.230.223.102 '

    waittime = 4

    graphhost = ["te-22257"]   # use for python server metric collection and graphing

    if '.' in hostname:
        server = hostname
    else:
        server = '%s.threatq.com' % hostname.lower()


    HOST = 'https://' + server + '/'             # Used primarily for all scripts

    TIEHOST = 'https://upgrade01.threatq.com/'   # Used in ExportCSV.py

    TQUSER = ['threatq@threatq.com', 'ChangeMePlease!']   # Mainly used for initial login and ldap.py setup

    USER = ['threatq@threatq.com', 'ChangeMePlease!']  #Default TQ system user

    users = [
             ["Adversary Reader", "ChangeMePlease!", "threatq2@threatq.com", "Administrative Access", "Adversary Reader Process"],
             ["Clint.Hart", "ChangeMePlease!", "Clint.Hart@threatq.com", "Maintenance Account", "Malware Attack"],
             ["john.doe", "ChangeMePlease!", "john.doe@threatq.com", "Primary Contributor Access","DDoS Attack"],
             ["Han Solo", "ChangeMePlease!", "han.solo@threatq.com", "Primary Contributor Access","DDoS Attack"],
             ["Jack Reacher", "ChangeMePlease!", "Jack.Reacher@threatq.com", "Administrative Access", "Wannacry Incident"],
             ["John.Wick", "ChangeMePlease!", "john.Wick@threatq.com", "Administrative Access", "Unknown breach"],
             ["James.Bond", "ChangeMePlease!","James.Bond@threatq.com", "Read Only Access", "Russian Intrusion"],
             ["Bob Observer", "ChangeMePlease!", "bobo@threatq.com", "Read Only Access", "unknown breach"],
             ["Alice Contributor", "ChangeMePlease!", "alicec@threatq.com", "Primary Contributor Access", "DDos Attack"],
             ["Sue Maintenancer", "ChangeMePlease!", "suem@threatq.com", "Maintenance Account", "DDos Attack"],
             ["Dave Administrator", "ChangeMePlease!", "davea@threatq.com", "Administrative Access", "DDoS Attack"],
             ["admin@threatq.com", "ChangeMePlease!", "admin@threatq.com", "Administrative Access", "DDoS Attack"],
             ["Super@threatq.com", "ChangeMePlease!", "Super@threatq.com", "Maintenance Account","DDoS Attack"],
             ["Analyst@threatq.com", "ChangeMePlease!", "Analyst@threatq.com", "Primary Contributor Access", "DDoS Attack"],
             ["Observer@threatq.com", "ChangeMePlease!", "Observer@threatq.com","Read Only Access", "DDoS Attack"],
             ["tanuj", "ChangeMePlease!", "tanuj@threatq.com", "Administrative Access", "DDoS Attack"],
             ["clinthart", "ChangeMePlease!", "clinthart@threatq.com", "Primary Contributor Access", "DDoS Attack"],
             ["Guest", "ChangeMePlease!", "Guest@threatq.com", "Read Only Access", "DDoS Attack"],
             ["tqadmin1", "ChangeMePlease!", "tqadmin1@threatq.com", "Administrative Access", "Wannacry Incident"],
             ["contributor", "ChangeMePlease!", "contributor@threatq.com", "Primary Contributor Access", "Wannacry Incident"],
             ["maintenance", "ChangeMePlease!", "maintenance@threatq.com", "Maintenance Account", "Wannacry Incident"],
             ["read-only", "ChangeMePlease!", "read-only@threatq.com", "Read Only Access", "Wannacry Incident"]
            ]

    SOURCE = 'Jack Reacher'                              # used to set the source text in the scripts

    LONGRUN = False                           # If you wish to add 20 min wait to test auto logout.

    WEBDRIVER = 'Chrome'                  # Chrome or Firefox are the possible values here.

    MYSQLROOT = 'thisismySQLrootpassword'

    # MYSQLROOT = 'thisismyrootpassword'

    TQBACKUP = 'threatq_backup.tgz'

