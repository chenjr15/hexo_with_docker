#!/bin/sh
nginx
tail -f /var/log/nginx/access.log /var/log/nginx/error.log