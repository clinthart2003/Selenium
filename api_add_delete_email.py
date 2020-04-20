import api_tests
import pprint
import names
import random
import time
import os
import sys
import logging


script = os.path.basename(sys.argv[0])
logging.basicConfig(filename='./files/test_logs/%s.log' % script, format='%(asctime)s %(message)s', level=logging.INFO)
logger = logging.getLogger('test')


def add_emails():
    count = 0
    while True:
        # generate unique name
        domain = r'@domain.com'
        user = str(names.get_first_name()) + '.' + str(names.get_last_name()) + '%s' % domain
        typemail = int(random.randint(1, 3))
        print user
        t1 = time.time()
        api_tests.add_email_address(user, typemail)
        t2 = time.time()

        print ('Email took %s seconds to add' % (t2 - t1))
        count = count + 1

        if count > 100:
            break


def delete_emails():
    response = api_tests.get_email_types_with_recipients()
    r = response.json()
    pprint.pprint(r)
    for recip in r['data'][0]['recipients']:
        # print recip['id']
        # print recip['type_id']
        api_tests.delete_email_addr(str(recip['type_id']), str(recip['id']))


# Set login tokens as global variables.
api_tests.set_access()

# Add 101 emails in notifications UI
add_emails()

# Delete all emails in the notifications UI
delete_emails()
