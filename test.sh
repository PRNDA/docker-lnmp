#!/bin/bash

docker run -it --rm \
    -v $PWD/php/www:/var/www/html:rw \
    -v $PWD/php/php-fpm.d:/usr/local/etc/php-fpm.d:ro \
    -v $PWD/sock:/sock \
    -v $PWD/log:/log:rw \
    --entrypoint=/bin/bash \
    php:7.1-fpm
