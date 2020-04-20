#!/usr/bin/env python

import paramiko
import re
import requests
import json
import random
import string
import warnings
import names
import time
from config import CONFIG
import logging, os, sys
import pprint

script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s %(message)s', level=logging.INFO)
logger = logging.getLogger('test')


warnings.filterwarnings(action='ignore',module='.*paramiko.*')


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
email = 'clinthart@domain.com'

# Password to log into the TQ applications.
password = 'password'

# Object type to use in bulk delete (currently only supports indicator).
object_type = 'indicator'

# Status ID desired to use when creating indicators through the indicator consume endpoint.
status_id = '1'
'''********************************************************************************************'''

hash = ['b44bf24320edeea573def72dc5e72b3b',
        'd396e68abd429c18ee9981e7ffda5470'
        ]

objectType= ['indicators',
            'adversaries',
            'events',
            'attachments',
            'signatures',
            'tasks',
            'campaign',
            'course_of_action',
            'exploit_target',
            'incident',
            'ttp',
            'attack_pattern',
            'intrusion_set',
            'malware',
            'tool',
            'identity',
            'report',
            'stix_pattern',
            'vulnerability'
             ]


def retrieve_client_id():
    ssh = paramiko.SSHClient()
    ssh.load_system_host_keys()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    if passphrase:
        k = paramiko.RSAKey.from_private_key_file(ssh_pkey_const, password=passphrase)
        ssh.connect(CONFIG.server, username=CONFIG.username, pkey=k)
    else:
        ssh.connect(CONFIG.server, username=CONFIG.username)
        # ssh.connect(CONFIG.server, username="root", password="secretPassword")

    # Grab contents of config.js file
    stdin, stdout, stderr = ssh.exec_command("cat /var/www/frontend/assets/js/config.js")
    configContents = stdout.readlines()
    ssh.close()

    # Extract clientID
    result = re.search('ClientId\'\\,(.*)constant', str(configContents))
    finalResult = re.search('\'(.*)\'', str(result.group(1)))
    client_id = finalResult.group(1)
    return client_id


def login():
    client_id = retrieve_client_id()
    url = 'https://'+server_name+'/api/token'
    headers = {'content-type': 'application/json'}
    params = {'client_id': client_id, 'grant_type': 'password'}
    data = {"email": email, "password": password}
    response = requests.post(url, params=params, data=json.dumps(data), headers=headers)
    r = response.json()
    access_token = r['access_token']
    return access_token


def indicator_bulk_delete():
    url = 'https://'+server_name+'/api/indicators/bulk-delete'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data = []
    data_delete = {"criteria": {}, "filters": {}}
    data.append(data_delete)
    response = requests.post(url, data=json.dumps(data), headers=headers)
    print("Response time for indicator bulk delete function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def indicator_consume():
    url = 'https://'+server_name+'/api/indicators/consume'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    params = {'normalize': 'Y'}
    data = append_string()
    response = requests.post(url, params=params, data=json.dumps(data), headers=headers)
    print("Response time for indicator consume function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    # print(response.content)


def append_string(num_of_objects=100):
    num_of_objects = 2000
    data = []
    for i in range(0, num_of_objects):
        gen_random = "dk-" + random_string()
        data_tuple = {"value": gen_random, "type_id": 25, "status_id": 1, "class": "network", "last_detected_at": '2019-06-10 14:41:27', "created_at": '2019-06-10 14:41:27'}
        data.append(data_tuple)
    data.append(data_tuple)
    # print(data)
    return data


def random_string(string_length=5):
    """Generate a random string of fixed length """
    letters = string.ascii_lowercase
    return ''.join(random.choice(letters) for i in range(string_length))

def indicator_bulk_status():
    url = 'https://'+server_name+'/api/bulk/status'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"query": {"indicator": {"criteria": {"+or":[{"mentions":""}]},"filters": {} }},"statuses": {"indicator": 1}}
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for the bulk status update function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def add_email_address(eadder = 'daniel.mellum@threathq.com', typemail = 1):
    url = 'https://'+server_name+'/api/configuration/emails/types/%s/recipients' % typemail
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"email": eadder}
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for adding new email: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def get_email_list():
    url = 'https://'+server_name+'/api/configuration/emails/types/2?with=recipients'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    print("Response time for the bulk status update function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def get_email_types():
    url = 'https://'+server_name+'/api/configuration/emails/types'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    print("Response time for the bulk status update function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def get_email_list_for_type(etype = '1'):
    url = 'https://'+server_name+'/api/configuration/emails/types/%s?with=recipients' % etype
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    print("Response time for the bulk status update function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def get_email_types_with_recipients():
    url = 'https://'+server_name+'/api/configuration/emails/types?with=recipients'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    print("Response time for get emails update function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)
    return response


def delete_email_addr(types="1", recipients="2"):
    url = 'https://'+server_name+'/api/configuration/emails/types/' + types + '/recipients/' + recipients
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"email":"clint.hart@domain.com"}
    response = requests.delete(url, data=json.dumps(data_update), headers=headers)
    print("Response time for the bulk status update function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)
    return response.status_code


def enable_email_messages_global():
    url = 'https://' + server_name + '/api/configuration/email.feed_health_notification_enabled'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"value":"1"}
    response = requests.patch(url, data=json.dumps(data_update), headers=headers)
    print("Response time for the bulk status update function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def enable_feed_email(connector_id = '12'):
    url = 'https://' + server_name + '/api/connectors/%s/notifications/toggle' % connector_id
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"is_notifiable":"1"}
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for the bulk status update function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)

def notifications_get():
    url = 'https://' + server_name + '/api/alerts?limit=5&offset=0&sort=-id'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for the bulk status update function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)

def email_config_get():
    url = 'https://' + CONFIG.server + '/api/configuration/smtp'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    print("Response time for the function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def send_signatures(data={}):
    #Create_Signature(s):
    # POST https://te-19919.domain.com/api/signatures
    url = 'https://' + server_name + '/api/configuration/smtp'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    response = requests.post(url, data=json.dumps(data), headers=headers)
    print("Response time for the bulk status update function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.e)
    print(response.content)



email_list = [['donowrong@domain.com', 1],
              ['clint.hart@domain.com', 1],
              ]


def get_search_name(hashstring):
    url = 'https://' + server_name + '/api/search/query/' + hashstring + '?fields=name'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    r = response.json()
    hashname = r['data']['name']
    return hashname



def get_hash(object, hash):
    searchName = get_search_name(hash)
    url = 'https://' + server_name + '/api/' + object + '/query/hash/' + hash
    print url
    print ('Save Search Name : ' + str(searchName))
    logstring = "Search Name : " + str(searchName) + ' | ' + str(url)
    logger.info (logstring)
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    print("Response time: " + str(response.elapsed.total_seconds()))
    logger.info("Response time: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    logger.info(response.status_code)
    # print(response.content)
    # logger.info(response.content)


def get_objects():
    url = 'https://' + server_name + '/api/objects/'
    print url
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    r = response.json()
    pprint.pprint(r)
    for display_name_plural in r['data']:
        print display_name_plural['collection']
    print("Response time for get objects function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    # print(response.content)


def disable_inapp_feed_health():
    # access_token = login()
    # bearer_token = 'Bearer ' + access_token
    url = 'https://' + server_name + '/api/configuration/notification.inapp.feed_health.enabled'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"value":"0"}
    response = requests.put(url, data=json.dumps(data_update), headers=headers)
    print("Response time for inapp function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def inapp_feed_health(value):
    # access_token = login()
    # bearer_token = 'Bearer ' + access_token
    url = 'https://' + server_name + '/api/configuration/notification.inapp.feed_health.enabled'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"value":value}
    response = requests.put(url, data=json.dumps(data_update), headers=headers)
    print("Response time for inapp function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def set_access():
    # Authenticat to the server
    global access_token
    access_token = login()
    global bearer_token
    bearer_token = 'Bearer ' + access_token


def enable_ldap():
    url = 'https://' + server_name + '/api/configuration/ldap/enable'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.put(url, data=json.dumps(data_update), headers=headers)
    print("Response time for ldap enable function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def disable_ldap():
    url = 'https://' + server_name + '/api/configuration/ldap/disable'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.put(url, data=json.dumps(data_update), headers=headers)
    print("Response time for ldap enable function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def mail_server_config():
    url = 'https://' + server_name + '/api/configuration/smtp'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"smtp.application_url":"https://" + server_name,"smtp.default_from_name":"ThreatQ App",
                   "smtp.host":"smtp.gmail.com","smtp.password":"TestingSMTP123TestingSMTP","smtp.port":"465",
                   "smtp.ssl":"ssl","smtp.username":"testingsmtptestingsmtp@gmail.com"}
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for mail config function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def mail_server_config_outlook():
    url = 'https://' + server_name + '/api/configuration/smtp'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"smtp.application_url":"https://te-20902.domain.com",
                   "smtp.default_from_address":"clint.hart@outlook.com",
                   "smtp.default_from_name":"ThreatQ App",
                   "smtp.host":"smtp.office365.com",
                   "smtp.password":"PennyJenny82!",
                   "smtp.port":"587",
                   "smtp.ssl":"tls",
                   "smtp.username":"clint.hart@outlook.com",
                   "smtp.destination_email_address":"clinthart@comcast.net"}
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for mail config function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def send_test_email():
    url = 'https://' + server_name + '/api/configuration/smtp/sendtestemail'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"smtp.application_url":"https://" + server_name,
                   "smtp.default_from_name":"ThreatQ App",
                   "smtp.default_from_address": "testingsmtptestingsmtp@gmail.com",
                   "smtp.host":"smtp.gmail.com",
                   "smtp.password":"TestingSMTP123TestingSMTP",
                   "smtp.port":"465",
                   "smtp.ssl":"ssl",
                   "smtp.username":"testingsmtptestingsmtp@gmail.com",
                   "smtp.destination_email_address":"clinthart@comcast.net"}
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for config and test function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def send_test_email_comcast():
    url = 'https://' + server_name + '/api/configuration/smtp/sendtestemail'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"smtp.application_url":"https://" + server_name,
                   "smtp.default_from_name":"ThreatQ App",
                   "smtp.host":"smtp.comcast.net",
                   "smtp.password":"gmcSierra1500!",
                   "smtp.port":"587",
                   "smtp.ssl":"tls",
                   "smtp.username":"clinthart",
                   "smtp.destination_email_address":"clinthart@comcast.net"}
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for config and test function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def send_test_email_outlook():
    url = 'https://' + server_name + '/api/configuration/smtp/sendtestemail'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"smtp.application_url":"https://" + server_name,
                   "smtp.default_from_address":"clint.hart@outlook.com",
                   "smtp.default_from_name":"ThreatQ App",
                   "smtp.host":"smtp.office365.com",
                   "smtp.password":"PennyJenny82!",
                   "smtp.port":"587",
                   "smtp.ssl":"tls",
                   "smtp.username":"clint.hart@outlook.com",
                   "smtp.destination_email_address":"clinthart@comcast.net"}
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for config and test function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def get_dashboards():
    url = 'https://' + server_name + '/api/dashboards'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    print("Response time for dashboard GET function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def advanced_openldap():
    url = 'https://' + server_name + '/api/configuration/ldap/advanced'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = [{"key":"ldap.advanced_enabled","value":"1"},
                   {"key":"ldap.config.adv.ad_port","value":"389"},
                   {"key":"ldap.config.adv.admin_password","value":"threatquotientthreatquotient"},
                   {"key":"ldap.config.adv.admin_username","value":"uid=admin@domain.com,ou=People,dc=threatq,dc=com"},
                   {"key":"ldap.config.adv.base_dn","value":"DC=threatq,DC=com"},
                   {"key":"ldap.config.adv.domain_controllers","value":"tqldap.domain.com"},
                   {"key":"ldap.config.adv.entry_dn_key","value":"dn"},
                   {"key":"ldap.config.adv.group_member_key","value":"cn"},
                   {"key":"ldap.config.adv.group_search_filter","value":"objectClass=posixGroup"},
                   {"key":"ldap.config.adv.real_primarygroup","value":"memberUid"},
                   {"key":"ldap.config.adv.use_ssl","value":0},
                   {"key":"ldap.config.adv.user_id_key","value":"uid"},
                   {"key":"ldap.config.adv.user_member_key","value":"memberUid"},
                   {"key":"ldap.config.adv.user_search_filter","value":"objectClass=posixAccount"},
                   {"key":"ldap.enabled","value":1},
                   {"key":"ldap.group.administrator","value":"ldapSuper"},
                   {"key":"ldap.group.analyst","value":"ldapAnalyst"},
                   {"key":"ldap.group.observer","value":"ldapObserver"},
                   {"key":"ldap.group.super","value":"administrator"}
                   ]
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for ldap POST function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #201 success response
    print(response.content)


def advanced_openldap_testconnection():
    url = 'https://' + server_name + '/api/configuration/ldap/advanced/testconnection'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = [{"key": "ldap.advanced_enabled", "value": "1"},
                   {"key": "ldap.config.adv.ad_port", "value": "389"},
                   {"key": "ldap.config.adv.admin_password", "value": "threatquotientthreatquotient"},
                   {"key": "ldap.config.adv.admin_username", "value": "uid=admin@domain.com,ou=People,dc=threatq,dc=com"},
                   {"key": "ldap.config.adv.base_dn", "value": "DC=threatq,DC=com"},
                   {"key": "ldap.config.adv.domain_controllers", "value": "tqldap.domain.com"},
                   {"key": "ldap.config.adv.entry_dn_key", "value": "dn"},
                   {"key": "ldap.config.adv.group_member_key", "value": "cn"},
                   {"key": "ldap.config.adv.group_search_filter", "value": "objectClass=posixGroup"},
                   {"key": "ldap.config.adv.real_primarygroup", "value": "memberUid"},
                   {"key": "ldap.config.adv.use_ssl", "value": 0},
                   {"key": "ldap.config.adv.user_id_key", "value": "uid"},
                   {"key": "ldap.config.adv.user_member_key", "value": "memberUid"},
                   {"key": "ldap.config.adv.user_search_filter", "value": "objectClass=posixAccount"},
                   {"key": "ldap.enabled", "value": 1},
                   {"key": "ldap.group.administrator", "value": "ldapSuper"},
                   {"key": "ldap.group.analyst", "value": "ldapAnalyst"},
                   {"key": "ldap.group.observer", "value": "ldapObserver"},
                   {"key": "ldap.group.super", "value": "administrator"}
                   ]
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for ldap test connection POST function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #201 success response
    print(response.content)


def advanced_openldap_getusers():
    url = 'https://' + server_name + '/api/configuration/ldap/advanced/getusers'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = [{"key": "ldap.advanced_enabled", "value": "1"},
                   {"key": "ldap.config.adv.ad_port", "value": "389"},
                   {"key": "ldap.config.adv.admin_password", "value": "threatquotientthreatquotient"},
                   {"key": "ldap.config.adv.admin_username", "value": "uid=admin@domain.com,ou=People,dc=threatq,dc=com"},
                   {"key": "ldap.config.adv.base_dn", "value": "DC=threatq,DC=com"},
                   {"key": "ldap.config.adv.domain_controllers", "value": "tqldap.domain.com"},
                   {"key": "ldap.config.adv.entry_dn_key", "value": "dn"},
                   {"key": "ldap.config.adv.group_member_key", "value": "cn"},
                   {"key": "ldap.config.adv.group_search_filter", "value": "objectClass=posixGroup"},
                   {"key": "ldap.config.adv.real_primarygroup", "value": "memberUid"},
                   {"key": "ldap.config.adv.use_ssl", "value": 0},
                   {"key": "ldap.config.adv.user_id_key", "value": "uid"},
                   {"key": "ldap.config.adv.user_member_key", "value": "memberUid"},
                   {"key": "ldap.config.adv.user_search_filter", "value": "objectClass=posixAccount"},
                   {"key": "ldap.enabled", "value": 1},
                   {"key": "ldap.group.administrator", "value": "ldapSuper"},
                   {"key": "ldap.group.analyst", "value": "ldapAnalyst"},
                   {"key": "ldap.group.observer", "value": "ldapObserver"},
                   {"key": "ldap.group.super", "value": "administrator"}
                   ]
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for ldap getusers POST function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #201 success response
    print(response.content)


def advanced_openldap_getgroups():
    url = 'https://' + server_name + '/api/configuration/ldap/advanced/getgroups'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = [{"key": "ldap.advanced_enabled", "value": "1"},
                   {"key": "ldap.config.adv.ad_port", "value": "389"},
                   {"key": "ldap.config.adv.admin_password", "value": "threatquotientthreatquotient"},
                   {"key": "ldap.config.adv.admin_username", "value": "uid=admin@domain.com,ou=People,dc=threatq,dc=com"},
                   {"key": "ldap.config.adv.base_dn", "value": "DC=threatq,DC=com"},
                   {"key": "ldap.config.adv.domain_controllers", "value": "tqldap.domain.com"},
                   {"key": "ldap.config.adv.entry_dn_key", "value": "dn"},
                   {"key": "ldap.config.adv.group_member_key", "value": "cn"},
                   {"key": "ldap.config.adv.group_search_filter", "value": "objectClass=posixGroup"},
                   {"key": "ldap.config.adv.real_primarygroup", "value": "memberUid"},
                   {"key": "ldap.config.adv.use_ssl", "value": 0},
                   {"key": "ldap.config.adv.user_id_key", "value": "uid"},
                   {"key": "ldap.config.adv.user_member_key", "value": "memberUid"},
                   {"key": "ldap.config.adv.user_search_filter", "value": "objectClass=posixAccount"},
                   {"key": "ldap.enabled", "value": 1},
                   {"key": "ldap.group.administrator", "value": "ldapSuper"},
                   {"key": "ldap.group.analyst", "value": "ldapAnalyst"},
                   {"key": "ldap.group.observer", "value": "ldapObserver"},
                   {"key": "ldap.group.super", "value": "administrator"}
                   ]
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print("Response time for ldap getgroups POST function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #201 success response
    print(response.content)


def send_server_key():
    url = 'https://' + server_name + '/'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    threatq_key="lwVdXQRCGRmEUrsMaK2gTFIha4JRpUvdj9p5sXLEJuHQpfFbz7RCz5%2FetFw4baqcca43GrXIrw%2FKZyFeXbeSaIj5DPKXLwsNhnDAeYS%2Bsby9ICrfq58VTw9fuprnjdIG7V7LgmsZ2SGuu70JWvmTxefehqs%2BMyYWdJMU%2FF5SY3s%3D"
    response = requests.post(url, data=threatq_key, headers=headers)
    print("Response time for key update POST function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #301 success response
    print(response.content)


def dashboard_revoke_access_multi():
    url = 'https://' + server_name + '/api/dashboards/3/users'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"user_id": [11,12]}
    response = requests.delete(url, data=json.dumps(data_update), headers=headers)
    print("Response time for dashboard GET function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def dashboard_revoke_access():
    url = 'https://' + server_name + '/api/dashboards/4/users/11'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.delete(url, data=json.dumps(data_update), headers=headers)
    print("Response time for dashboard GET function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)


def dashboard_make_private():
    url = 'https://' + server_name + '/api/dashboards/4'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {"title": "QA Dashboard Make Private","is_public": 0}
    response = requests.put(url, data=json.dumps(data_update), headers=headers)
    print("Response time for dashboard GET function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)
    print(response.content)

def send_server_key(displayname, emailaddr):
    url = 'https://' + server_name + '/api/users?with=groups'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    payload='{"password":"threatquotientthreatquotient","password_confirmation":"threatquotientthreatquotient","display_name":%s ,"email":%s,"group_id":2,"type":"user","status":"enabled","title":"I am Groot"} % (displayname, emailaddr)'
    response = requests.post(url, data=payload, headers=headers)
    print("Response time for key update POST function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #301 success response
    print(response.content)

def saml_config_get():
    url = 'https://' + server_name + '/api/configuration/saml'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    print("Response time for Saml Config GET function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #200 success response
    print(response.content)


def saml_configuration_saml():
    url = 'https://' + server_name + '/api/configuration/saml'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = [#{"key":"saml.idp_url","value":"https://adfs.domain.com/FederationMetadata/2007-06/FederationMetadata.xml"},
                   {"key":"saml.sp_encrypt","value":"1"},
                   {"key":"saml.group.administrator.key","value":"SSO"},
                   {"key": "saml.group.analyst.key", "value": "SSO"},
                   {"key": "saml.group.observer.key", "value": "SSO"},
                   {"key":"saml.group.administrator.value","value":"SSO Administrator"},
                   {"key": "saml.group.analyst.value", "value": "SSO Analyst"},
                   {"key": "saml.group.observer.value", "value": "SSO Observer"},
                   {"key": "saml.enabled", "value": 1}
                   ]
    print (url, json.dumps(data_update), headers)
    response = requests.post(url, data=json.dumps(data_update), headers=headers)
    print(response.status_code)  #201 success response
    print(response.content)


def saml_keyfile_post():
    url = 'https://' + server_name + '/api/configuration/saml/saml.sp_key_file/upload'
    headers = {'Authorization': bearer_token}
    filename = 'threatq.key'
    up = {'file':(filename, open('./files/saml/threatq.key', 'rb'), "multipart/form-data")}
    response = requests.post(url, files=up, headers=headers)
    print("Response time for Saml key file POST function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #201 success response
    print(response.content)

def saml_idp_xml_post():
    url = 'https://' + server_name + '/api/configuration/saml/saml.idp_xml/upload'
    headers = {'Authorization': bearer_token}
    filename = 'FederationMetadata.xml'
    up = {'file':(filename, open('./files/saml/FederationMetadata.xml', 'rb'), "multipart/form-data")}
    response = requests.post(url, files=up, headers=headers)
    print("Response time for Saml key file POST function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #201 success response
    print(response.content)


def saml_pemfile_post():
    url = 'https://' + server_name + '/api/configuration/saml/saml.sp_cert_file/upload'
    headers = {'Authorization': bearer_token}
    filename = 'threatq.pem'
    up= {'file':(filename, open('./files/saml/threatq.pem', 'rb'), "multipart/form-data")}
    print (url, up, headers)
    response = requests.post(url, files=up, headers=headers)
    print("Response time for Saml key file POST function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #201 success response
    print(response.content)

def saml_metadata_get():
    url = 'https://' + server_name + '/api/saml/metadata'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    print (url, headers)
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    print("Response time for Saml metadata GET function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #200 success response
    print(response.content)

def saml_idp_xml_get():
    url = 'https://' + server_name + '/api/configuration/saml/saml.idp_xml'
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    data_update = {}
    response = requests.get(url, data=json.dumps(data_update), headers=headers)
    print("Response time for Saml idp GET function: " + str(response.elapsed.total_seconds()))
    print(response.status_code)  #200 success response
    print(response.content)

def main():

    set_access()   #never close this.

    saml_idp_xml_post()

    saml_keyfile_post()

    saml_pemfile_post()

    saml_configuration_saml()

    saml_idp_xml_get()

    saml_metadata_get()

    saml_config_get()

    # dashboard_make_private()

    # dashboard_revoke_access_multi()

    # dashboard_revoke_access()

    # send_server_key()

    # advanced_openldap()

    # advanced_openldap_testconnection()

    # advanced_openldap_getusers()

    # advanced_openldap_getgroups()

    # get_dashboards()

    #ch-email-3
    #send_test_email()

    #ch-email-2
    # send_test_email_outlook()

    # ch-email-1
    # send_test_email_comcast()

    # inapp_feed_health("0")

    # get_objects()

    #for h in hash:
        
    #    for i in objectType:

    #        get_hash(i, h)
    

    # indicator_consume()

    # indicator_bulk_status()

    # indicator_bulk_delete()

    # notifications_get()

    # email_config_get()

    """
    count = 0
    while True:
       #generate unique name
       domain = r'@domain.com'
       User = str(names.get_first_name()) + '.' + str(names.get_last_name()) + '%s' % domain
       typemail = int(random.randint(1 ,3))
       print User
       t1 = time.time()
       add_email_address(User, typemail)
       t2 = time.time()

       print ('Email took %s seconds to add'  % (t2 - t1))
       count = count + 1

       if count > 100:
           break
    """

    #get_email_types()

    """
    ## delete all emails
    response = get_email_types_with_recipients()
    r = response.json()
    pprint.pprint(r)
    for recip in r['data'][0]['recipients']:
        # print recip['id']
        # print recip['type_id']
        delete_email_addr(str(recip['type_id']), str(recip['id']))
    """

    # get_email_list_for_type(etype = '2')

    # get_email_list()

    # enable_email_messages_global()

    # enable_feed_email(connector_id = '15')

    # for User in CONFIG.users:

   # send_signatures({
   #             "status_id": 3,
   #             "value": "GPL EXPLOIT WEB-MISC JBoss RMI class download",
   #             "name": " service directory listing attempt (21034611)",
   #             "description": "A description of the Signature.",
   #             "type_id": "4"
   #         })




if __name__ == "__main__":
    main()
