FROM dockerfile/ubuntu

RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

COPY sites-enabled /etc/nginx/sites-enabled
COPY html /var/www/html

WORKDIR /etc/nginx

CMD ["nginx"]

EXPOSE 80
EXPOSE 443