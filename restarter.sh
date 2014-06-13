#!/bin/sh

nodemon /srv/ngLazy-demo/server.js > /dev/null &
nodemon /srv/ciServer/ciServer.js > /dev/null &

# in crontab:
# PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# PORT=80
# @reboot root /bin/sleep 120; /srv/ciServer/restarter.sh >> cron.log 2>&1
# */1 * * * * root ps -ef | grep nodemon | grep -v grep 2>/dev/null || { zsh /srv/ciServer/restarter.sh &}

