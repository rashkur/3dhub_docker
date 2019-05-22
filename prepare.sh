#!/bin/bash

WORKDIR=$(pwd)/shared
DOMAIN=docker.rashkur.com
EMAIL=rashkur@gmail.com

docker run --rm -it -v "$WORKDIR"/certbot:/etc/letsencrypt -p 80:80 certbot/certbot certonly --authenticator standalone -d "$DOMAIN" -m "$EMAIL" --agree-tos -n

openssl dhparam -dsaparam -out "$WORKDIR/nginx/ssl-dhparams.pem" 4096
