#!/usr/bin/env python
"""

   dashboards_api.py will connect to server via api and manipulate dashboards.
   Author: David Kurtz
   Date: 7/18/19
   See dashboard documentation in confluence for more details:
   https://confluence.threatq.com/pages/viewpage.action?spaceKey=EN&title=Dashboards

"""

import requests
import json
import warnings
from config import CONFIG

warnings.filterwarnings(action='ignore', module='.*paramiko.*')


# Constants
server = CONFIG.IPADDR
server_name = CONFIG.server
email = CONFIG.TQUSER[0]
password = CONFIG.TQUSER[1]
localpath = '/Users/davidkurtz/test_files/'
status_id = '2'
dashboard_id = 12
dashboard_user_id = 22
widget_id = 3
dashboard_widget_id = 2
logging = 2


# Retrieve client id from server.
def retrieve_client_id():
    url = 'https://' + server_name + '/assets/js/config.js'
    try:
        response = requests.get(url)
    except requests.exceptions.RequestException as e:
        print(e)
        raise SystemExit()
    response_data = response.text
    search_text = "'ClientId', '"
    client_id = response_data[response_data.find(search_text) +
                              len(search_text):response_data.find("')", response_data.find(search_text))]
    return client_id


# login api call.
def login():
    client_id = retrieve_client_id()
    url = 'https://' + server_name + '/api/token'
    headers = {'content-type': 'application/json'}
    params = {'client_id': client_id, 'grant_type': 'password'}
    data = {"email": email, "password": password}
    try:
        response = requests.post(url, params=params, data=json.dumps(data), headers=headers)
    except requests.exceptions.RequestException as e:
        print(e)
        raise SystemExit()
    r = response.json()
    access_token = r['access_token']
    if logging == 2:
        print("Response time for login function: " + str(response.elapsed.total_seconds()))
        print(response.status_code)
    return access_token


# Base api query, used by all functions.
def api_query(url, data, request_type):
    access_token = login()
    bearer_token = 'Bearer ' + access_token
    headers = {'Authorization': bearer_token, 'content-type': 'application/json'}
    try:
        if request_type == "get":
            response = requests.get(url, data=json.dumps(data), headers=headers)
        elif request_type == "put":
            response = requests.put(url, data=json.dumps(data), headers=headers)
        elif request_type == "post":
            response = requests.post(url, data=json.dumps(data), headers=headers)
        elif request_type == "delete":
            response = requests.delete(url, data=json.dumps(data), headers=headers)
        else:
            raise SystemExit("Unidentified request type.")
    except requests.exceptions.RequestException as e:
        print(e)
        raise SystemExit()
    return response.elapsed.total_seconds(), response.status_code, response.content


# Base dashboards calls
def get_dashboards():
    url = 'https://' + server_name + '/api/dashboards?with=creator,users,widgets'
    api_call = 'get'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for returning Dashboards: " + str(elapsed_time))
        print(status_code)
        print(content)


def post_dashboards():
    url = 'https://' + server_name + '/api/dashboards'
    api_call = 'post'
    data = {"title": "dk10 dashboard", "is_public": 1, "is_locked": 0, "refresh_rate": 1600}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for creating Dashboards: " + str(elapsed_time))
        print(status_code)
        print(content)


def get_dashboards_by_id():

    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '?with=creator,users,widgets'
    api_call = 'get'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for returning dashboards by ID: " + str(elapsed_time))
        print(status_code)
        print(content)


def put_dashboards_by_id():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id)
    api_call = 'put'
    data = {"title": "updated dk5 dashboard"}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for updating dashboards by ID: " + str(elapsed_time))
        print(status_code)
        print(content)


def delete_dashboards_by_id():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id)
    api_call = 'delete'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for deleting dashboards by ID: " + str(elapsed_time))
        print(status_code)
        print(content)


# Dashboard user API calls
def get_dashboards_user():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/users?with=user,dashboard'
    api_call = 'get'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for returning users based on dashboard ID: " + str(elapsed_time))
        print(status_code)
        print(content)


def post_dashboards_user():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/users'
    api_call = 'post'
    data = {"user_id": 3, "order": 1}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for adding user permissions to a dashboard: " + str(elapsed_time))
        print(status_code)
        print(content)


def get_dashboards_user_by_id():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/users/' + \
          str(dashboard_user_id) + '?with=user,dashboard'
    api_call = 'get'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for returning users based on dashboard and user ID: " + str(elapsed_time))
        print(status_code)
        print(content)


def put_dashboards_user_by_id():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/users/' + str(dashboard_user_id)
    api_call = 'put'
    data = {"order": 1}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for updating dashboard based on dashboard and user ID: " + str(elapsed_time))
        print(status_code)
        print(content)


def delete_dashboards_user_by_id():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/users/' + str(dashboard_user_id)
    api_call = 'delete'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for deleting dashboards based on user ID: " + str(elapsed_time))
        print(status_code)
        print(content)


# Widget API Calls
def get_widgets():
    url = 'https://' + server_name + '/api/widgets'
    api_call = 'get'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for returning widgets: " + str(elapsed_time))
        print(status_code)
        print(content)


def post_widgets():
    url = 'https://' + server_name + '/api/widgets'
    api_call = 'post'
    data = {"title": "DK3 Widget", "settings_json": {"name": "dk widget", "directive": "random", "attrs":
            {"halfOne": "First Part", "halfTwo": "Second Part"}, "settingsModalOptions":
            {"partialTemplateURL": "/custom-dashboards/widgets/modal-half/settings/template.html",
             "controller": "RandomCustomWidgetModalController"}}}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for creating a widget: " + str(elapsed_time))
        print(status_code)
        print(content)


def get_widgets_by_id():
    url = 'https://' + server_name + '/api/widgets/' + str(widget_id)
    api_call = 'get'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for returning widgets by ID: " + str(elapsed_time))
        print(status_code)
        print(content)


def put_widgets_by_id():
    url = 'https://' + server_name + '/api/widgets/' + str(widget_id)
    api_call = 'put'
    data = {"title": "Updated DK Widget", "settings_json": {"name": "dk widget", "directive": "random", "attrs":
            {"halfOne": "First Part", "halfTwo": "Second Part"}, "settingsModalOptions":
            {"partialTemplateURL": "/custom-dashboards/widgets/modal-half/settings/template.html",
             "controller": "RandomCustomWidgetModalController"}}}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for updating widgets: " + str(elapsed_time))
        print(status_code)
        print(content)


def delete_widgets_by_id():
    url = 'https://' + server_name + '/api/widgets/' + str(widget_id)
    api_call = 'delete'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for deleting widgets by ID: " + str(elapsed_time))
        print(status_code)
        print(content)


# Dashboard Widget API Calls
def get_dashboard_widgets():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/widgets?with=dashboard,widget'
    api_call = 'get'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for returning widgets available for a dashboard: " + str(elapsed_time))
        print(status_code)
        print(content)


def post_dashboard_widgets():
    # url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/widgets/' + str(dashboard_widget_id)
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/widgets/'
    api_call = 'post'
    data = {"widget_id": 3, "grid_json": {"size": {"y": 3, "x": 3}, "position": {"r": 0, "c": 2}}}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for creating a widget for a dashboard: " + str(elapsed_time))
        print(status_code)
        print(content)


def get_dashboard_widgets_by_id():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/widgets/' + \
          str(dashboard_widget_id) + '?with=dashboard,widget'
    api_call = 'get'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for returning widgets based on dashboard and dashboard widget ID: " + str(elapsed_time))
        print(status_code)
        print(content)


def put_dashboard_widgets_by_id():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/widgets/' + str(dashboard_widget_id)
    api_call = 'put'
    data = {"grid_json": {"size": {"y": 2, "x": 2}, "position": {"r": 2, "c": 2}}}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for updating widgets based on dashboard and dashboard widget ID: " + str(elapsed_time))
        print(status_code)
        print(content)


def delete_dashboard_widgets_by_id():
    url = 'https://' + server_name + '/api/dashboards/' + str(dashboard_id) + '/widgets/' + str(dashboard_widget_id)
    api_call = 'delete'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for deleting widgets based on dashboard and widget ID: " + str(elapsed_time))
        print(status_code)
        print(content)

def dashboard_cache():
    url = 'https://' + server_name + '/api/indicators/query' + '?widget=1'
    api_call = 'get'
    data = {}
    elapsed_time, status_code, content = api_query(url, data, api_call)
    if logging >= 1:
        print("Response time for deleting widgets based on dashboard and widget ID: " + str(elapsed_time))
        print(status_code)
        print(content)

def main():
    dashboard_cache()
    # get_dashboards()
    # post_dashboards()
    # get_dashboards_by_id()
    # put_dashboards_by_id()
    # delete_dashboards_by_id()
    # get_dashboards_user()
    # post_dashboards_user()
    # get_dashboards_user_by_id()
    # put_dashboards_user_by_id()
    # delete_dashboards_user_by_id()
    # get_widgets()
    # post_widgets()
    # get_widgets_by_id()
    # put_widgets_by_id()
    # delete_widgets_by_id()
    # get_dashboard_widgets()
    # post_dashboard_widgets()
    # get_dashboard_widgets_by_id()
    # put_dashboard_widgets_by_id()
    # delete_dashboard_widgets_by_id()


if __name__ == "__main__":
    main()
