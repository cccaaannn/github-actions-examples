#!/bin/sh
envsubst < /usr/share/nginx/html/assets/env.template.js > /usr/share/nginx/html/assets/env.js && sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'