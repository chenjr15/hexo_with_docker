#!/bin/sh
content=$(ls -A /blog)
if [ -z $content ] ;then
    # empty blog folder
    echo Initing Hexo...
    hexo init /blog 
else
    echo "Skipping init."
fi
cd /blog && hexo generate
nginx
tail -f /var/log/nginx/access.log /var/log/nginx/error.log