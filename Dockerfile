FROM nginx

COPY sites-enabled /etc/nginx/sites-enabled

COPY html /usr/share/nginx/html