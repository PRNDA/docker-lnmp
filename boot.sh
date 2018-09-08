#!/bin/bash

docker run -d -p 8000:80 \
  --name nginx \
  -v $PWD/openresty:/etc/nginx/conf.d \
  -v $PWD/sock:/sock:rw \
  -v $PWD/log:/log:rw \
  openresty/openresty:alpine


docker run --name php -d \
    -v $PWD/php/www:/var/www/html:rw \
    -v $PWD/php/php-fpm.d:/usr/local/etc/php-fpm.d:ro \
    -v $PWD/php/conf/php-fpm.conf:/usr/local/etc/php-fpm.conf:ro \
    -v $PWD/sock:/sock \
    -v $PWD/log:/log:rw \
    php:7.1-fpm
