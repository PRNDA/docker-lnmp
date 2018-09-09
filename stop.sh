#!/bin/bash

docker stop nginx && docker rm nginx;
docker stop php && docker rm php;
docker stop pgsql && docker rm pgsql;
