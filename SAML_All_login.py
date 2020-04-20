from config import CONFIG
import os

def samlusers():
    global usr
    global user

def main():

    for user in CONFIG.users:

        global usr
        usr=user
        #print (usr)
        os.system('python SAML_user_login.py %s %s' % (usr[2],usr[1]))

if __name__ == "__main__":

    main()
