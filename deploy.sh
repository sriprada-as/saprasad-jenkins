#!/bin/bash

if [ "$deploy" == "app1" ]
then
    cp -rf /common/webapp1-sri/* /var/www/html/
    httpd -DFOREGROUND
    #Above command starts the apache httpd service
elif [ "$deploy" == "app2" ]
then
    cp -rf /common/webapp2-sri/* /var/www/html/
    httpd -DFOREGROUND
elif [ "$deploy" == "app3" ]
then
    cp -rf /common/webapp3-sri/* /var/www/html/
    httpd -DFOREGROUND
else
    echo "Wrong variable value" > /var/www/html/index.html
    httpd -DFOREGROUND
fi
