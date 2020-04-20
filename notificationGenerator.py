#!/usr/bin/env python
"""
   notificationGenerator.py sends messages to RabbitMQ to test in-App Notifications
   Author: David Kurtz
   Date: 4/12/19
   Requires: pika, random, string, datetime, and mysql.connector modules
   By default script will generate 15 messages, but user can pass any number of desired messages to be generated.
   To run: Copy script to localhost where rabbitmq is running and use the following command:
   python -c 'import notificationGenerator; print notificationGenerator.message_generator()'
Two optional parameters can be passed:
num_messages and user_id.  By default these are set to 15 messages and user_id=1.
If you would like to generate more or less messages or if you would like to change user_id pass in value for num_messages
followed by user_id as follows (for 100 messages and user_id=1):
python -c 'import notificationGenerator; print notificationGenerator.message_generator(100, 1)'
"""

import pika
import random
import string
import datetime
import mysql.connector
from mysql.connector import errorcode
# import argparse

def db_maxID():
    with open('/var/www/api/app/config/database.ini') as f:
        lines=f.readlines()
    lines = [x.strip() for x in lines]
    user=lines[1].split("=",1)[1]
    pwd=lines[2].split("=",1)[1]
    
    config = {
        'user': user,
        'password': pwd,
        'host': '127.0.0.1',
        'database': 'threatquotient2'
    }
    cnx = cur = None
    try:
        cnx = mysql.connector.connect(**config)
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print('Something is wrong with your user name or password')
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)
    else:
        cur = cnx.cursor()
        cur.execute('SELECT MAX(id) FROM alerts;')
        for row in cur.fetchall():
            if row[0] == None:
                return (1)
            else:        
                return (row[0])
    finally:
        if cur:
            cur.close()
        if cnx:
            cnx.close()    


def db_insert(status, type, message, category, timestamp, user_id):
    with open('/var/www/api/app/config/database.ini') as f:
        lines=f.readlines()
    lines = [x.strip() for x in lines]
    user=lines[1].split("=",1)[1]
    pwd=lines[2].split("=",1)[1]

    config = {
        'user': user,
        'password': pwd,
        'host': '127.0.0.1',
        'database': 'threatquotient2'
    }
    cnx = cur = None
    try:
        cnx = mysql.connector.connect(**config)
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print('Something is wrong with your user name or password')
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)
    else:
        cur = cnx.cursor()
        sql_valuestring = "('"+status+"', '"+type+"', '"+ str(user_id) +" ', 'api\/indicators\/bulk', '"+message+"', '"+timestamp+"', '"+timestamp+"', '"+category+"');"
        sql_query = "INSERT INTO alerts (status, type, user_id, resource_url, message, created_at, updated_at, category) VALUES "
        sql=sql_query + sql_valuestring
        cur.execute(sql)
        cnx.commit()
    finally:
        if cur:
            cur.close()
        if cnx:
            cnx.close()


def message_generator(num_messages=15, user_id=1):
    # Lists for status, type, and category.
    status_list = ["info", "success", "warn", "error"]
    type_list = ["system", "email"]
    category_list = ["system-health", "system-notification", "feed-health", "task"]
    curr_time=datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    max_id=db_maxID()
#    max_id=82
    # Creates number of desired messages, Creates connection to rabbitmq, sends messages and closes connection.

    connection = pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
    channel = connection.channel()
    channel.exchange_declare(exchange='log', exchange_type='fanout')


    for i in range(1, num_messages+1):
       status=random.choice(status_list)
       type=random.choice(type_list)
       category=random.choice(category_list)
       payload="{\"job_id\":\""+''.join(random.choice(string.ascii_lowercase + string.digits) for x in range(13))+"\",\"alert\":{\"status\":\""+status+"\",\"type\":\""+type+"\",\"category\":\""+category+"\",\"seen\":0,\"read\":0,\"user_id\":"+str(user_id)+",\"resource_url\":\"api\/indicators\/bulk\",\"message\":\"Message for Job #"+str(i)+": Status is "+status+"; Type is "+type+"; Category is "+category+" Adding random text to increase message length - abcdefghijklmnopqrstuvwxyz123456789testtesttesttesttesttesttesttesttesttesttest\",\"updated_at\":\""+curr_time+"\",\"created_at\":\""+str(curr_time)+"\",\"id\":"+str(max_id+i)+"}}"
       message = "Message for Job #"+str(i)+": Status is "+status+"; Type is "+type+"; Category is "+category
       db_insert(status, type, message, category, curr_time, user_id)
       channel.basic_publish(exchange='alerts',
                             routing_key='alerts',
                             properties=pika.BasicProperties(
                                delivery_mode = 2),
                             body=payload)

       # Debug print statements that will be removed
       print("Job ID " + str(i) + " message sent!")
       print(payload + "\n")
    connection.close()

#if __name__ == "__main__":
    #message_generator(num_messages=15, user_id=1)
