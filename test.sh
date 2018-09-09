#!/bin/bash

MYWORKSPACE="/Users/kelu/workspace/wechat.kelu.org"


#docker run -it --rm \
#    -v $PWD/php/www:/var/www/html:rw \
#    -v $PWD/php/php-fpm.d:/usr/local/etc/php-fpm.d:ro \
#    -v $PWD/sock:/sock \
#    -v $PWD/log:/log:rw \
#    --entrypoint=/bin/bash \
#    php:7.1-fpm

#docker run -it --rm \
#  -v $MYWORKSPACE:/app \
#  composer:1.4.2 install --ignore-platform-reqs --no-scripts

docker run -it --rm \
  -p 5432:5432 \
  -v $PWD/psql/data:/var/lib/postgresql/data \
  -v $PWD/psql/dump:/var/lib/postgresql/dump \
  postgres:9.4-alpine
