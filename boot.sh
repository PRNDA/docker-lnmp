#!/bin/bash

MYWORKSPACE="/Users/kelu/workspace/wechat.kelu.org"
# MYWORKSPACE=$PWD/php/www

docker run -d -p 8000:80 \
  --name nginx \
  --restart=always \
  -v $MYWORKSPACE:/var/www/html \
  -v $PWD/openresty:/etc/nginx/conf.d \
  -v $PWD/sock:/sock \
  -v $PWD/log:/log \
  -v $PWD/bin/php:/usr/local/bin/php \
  openresty/openresty:alpine


docker run --name php -d \
  --restart=always \
  -v $MYWORKSPACE:/var/www/html \
  -v $PWD/php/php-fpm.d:/usr/local/etc/php-fpm.d:ro \
  -v $PWD/php/conf/php-fpm.conf:/usr/local/etc/php-fpm.conf:ro \
  -v $PWD/sock:/sock \
  -v $PWD/log:/log \
  php:7.1-fpm

#docker run --rm \
#  -v $MYWORKSAPCE:/app \
#  composer:1.4.2 install --ignore-platform-reqs --no-scripts
