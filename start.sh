#!/bin/bash
docker run --name nginx-sample \
  -d -p 8080:80 \
  -v $PWD/public:/usr/share/nginx/html:ro \
  -v $PWD/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v $PWD/conf.d:/etc/nginx/conf.d:ro \
  nginx nginx -p /usr/share/nginx -g 'daemon off;'
