#!/bin/bash

MYWORKSPACE="/Users/kelu/workspace/wechat.kelu.org"

docker run -it --rm \
  -v $MYWORKSPACE:/app \
  --entrypoint=/bin/bash \
  composer:1.4.2 

#docker run -it --rm \
#  -v $MYWORKSPACE:/app \
#  composer:1.4.2 dump-autoload

#docker run -it --rm \
#  -v $MYWORKSPACE:/app \
#  composer:1.4.2 $1 --ignore-platform-reqs --no-scripts
