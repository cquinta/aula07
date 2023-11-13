#!/bin/sh
echo $HOSTNAME > /usr/share/nginx/html/index.html
nginx -g 'daemon off;'
