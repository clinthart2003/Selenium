#!/bin/sh

server=$(echo $HOSTNAME | cut -d "." -f1)
FILENAME=threatq-memory-$server

echo $" " | tee -a /var/log/$FILENAME.log
echo "++++ $server  was restarted ++++" | tee -a /var/log/$FILENAME.log
echo $" " | tee -a /var/log/$FILENAME.log
NOWT=$(echo `date +%Y%m%d`)

echo $NOWT

while true; do

    # Add date stamp and metrics to logs in /var/log dir
         #TOP stats and snapshot timestamp
    echo "DATE:$(date +"%Y-%m-%d %T")" | tee -a /var/log/$FILENAME.log
    echo "$(top -b -w150 -o +%MEM | head -n 75)"  |  tee -a /var/log/$FILENAME.log
         #Collect and sum httpd processes and output aggregate
    echo $" " | tee -a /var/log/$FILENAME.log
    echo "$(python /root/pymem.py)" | tee -a /var/log/$FILENAME.log
         #Collect HDD metrics
    echo $" " | tee -a /var/log/$FILENAME.log
    echo "$(iostat -dx)" | tee -a /var/log/$FILENAME.log
    echo $" " | tee -a /var/log/$FILENAME.log
         #Collect solr JAVA memory usage and add timestamp
    echo "DATE:$(date +"%Y-%m-%d %T")" | tee -a /var/log/$FILENAME-jvm.log
    echo "$(curl localhost:8983/solr/admin/info/system?wt=json | python -mjson.tool)" | tee -a /var/log/$FILENAME-jvm.log
    sleep 60

    # Clip file at change of day
    SYSTIME=$(date +%s)
    THEN=$(echo `date +%Y%m%d`)
    echo $THEN
    if [[ $THEN != $NOWT ]] ; then
        mv /var/log/$FILENAME.log /var/log/$FILENAME-$SYSTIME.log
        mv /var/log/$FILENAME-jvm.log /var/log/$FILENAME-jvm-$SYSTIME.log
        NOWT=$(echo `date +%Y%m%d`)
        echo $"Change of day " | tee -a /var/log/$FILENAME.log
        echo $NOWT;
    fi

    count=$(ls -l /var/log/$FILENAME-*.log | wc -l)

    # Rollup and archive logs when there are 10, then zip it up.
    if (($count>19)) ; then
        cd /var/log
        tar -cf /var/log/$FILENAME-$SYSTIME.tar $FILENAME-*.log
        gzip /var/log/$FILENAME-$SYSTIME.tar.gz /var/log/$FILENAME-$SYSTIME.tar
        rm -rf /var/log/$FILENAME-*.log
        rm -rf /var/log/*.tar ;
    fi

        count=$(ls -l /var/log/$FILENAME-*.log | wc -l)

done
