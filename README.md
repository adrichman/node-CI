# Continuous Integration 
*A nodejs server and script, made possible with Github webhooks*

This is a server that listens for webhook messages from Github on a port that is separate from a concurrently running webserver. 

When pushes are made to a repo that triggers this webhook on Github, the webhook contacts the server with details of the push event. The ```ciServer``` then goes to the local directory that hosts the related repo and executes a pull from the updated repo. __Boom. Re-Deployed.__

In addition, ```restarter.sh``` , which starts both servers when executed, contains a crontab script to be placed in the crontab config (```crontab -e```). This script will start the servers on system reboot, as well as check every minute that they are running, and restart if not.

Currently implemented on Ubuntu 14.04

Requires: node, npm && ```npm install nodemon -g```