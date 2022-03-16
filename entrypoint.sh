#!/usr/bin/env sh
set -eu

envsubst "${ALTINN_HOST} ${ALTINN_API_KEY}" < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

echo "$DIGDIR_CRT_PEM" > /etc/nginx/client.crt.pem
echo "$DIGDIR_KEY_PEM" > /etc/nginx/client.key.pem

exec "$@"