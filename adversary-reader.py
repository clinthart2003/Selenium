"""
I've included some steps on getting the Adversary Reader custom connector into ThreatQ. I'd be happy to meet to navigate these steps over GoToMeeting, however I'm sending a write-up with installation instructions in case you'd like to get rolling sooner.

I've attached some files you'll need on the ThreatQ device. You'll also need the threatqsdk and threatqcc packages off pip. You can install them on the ThreatQ device by running the following commands, with USERNAME and PASSWORD replaced by your yum credentials. This is the same set of credentials used to download the OVA.

pip install -i https://threatq@threatq:PASSWORD@extensions.threatq.com/threatq/integrations-dev threatqsdk
pip install -i https://USERNAME:PASSWORD@extensions.threatq.com/threatq/integrations-dev threatqcc

Once those are installed, create a user for the custom feed by logging into your ThreatQ and clicking the gear on the top right. Select User Management and create a new user with the name Adversary Reader. The e-mail/username does not need to be an existing e-mail address, and the user should be a ThreatQ Maintenance User. Log in to the Adversary Reader user and click the gear on the top right and select OAuth Management. You will see the user Client ID there.

Transfer the attached files to your ThreatQ instance and ssh in. On the command line, run the following:
yum install unzip (accept the prompts)
unzip url_grabber_v0.3.nozip
cd unzip url_grabber_v0.3
chmod +x tqURLGrabber-install.sh
./tqURLGrabber-install.sh
mkdir /opt/adversary_reader
mkdir /opt/adversary_reader/config
mkdir /opt/adversary_reader/logs
mkdir /opt/adversary_reader/files

cd -
pip install tqAdversaryReader-3.0.2-py2-none-any.whl 
tqadversaryreader -f /opt/adversary_reader/files/ -c /opt/adversary_reader/config/ -ll /opt/adversary_reader/logs/ -v 3
For the Host, enter 127.0.0.1 and the ClientID from the OAuth Management page. For the e-mail address and password, enter the credentials for your adversaryreader user. It will also ask for a default status. After inputting this information, it will tell you to navigate to the UI and enable the connector. 

On the UI, click the gear on the top right and select Incoming Feeds. Click the ThreatQ Labs tab, and toggle the slider for "Adversary Reader" to "On".

Back on the ThreatQ CLI, enter the following:
screen
tqadversaryreader -f /opt/adversary_reader/files/ -c /opt/adversary_reader/config/ -ll /opt/adversary_reader/logs/ -v 3

ThreatQ will begin importing the Adversary Data from the APT Groups Google Drive doc. You can exit the terminal now, as the process will continue running on the screen session. For updated information on the adversary groups, add the tqadversary command above (including the trailing arguments) to crontab, to be run once a day. I'd be happy to jump to help with this.
"""