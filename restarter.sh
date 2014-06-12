#!/bin/sh
# in crontab: @reboot ~/srv/ciServer/restarter.sh >> cron.log 2>&1

if [ $(ps aux | grep $USER | grep node | grep -v grep | wc -l | tr -s "\n") -eq 0 ]
then
        forever start /srv/ngLazy-demo/server.js > /dev/null
        forever start /srv/ciServer/ciServer.js > /dev/null
fi
