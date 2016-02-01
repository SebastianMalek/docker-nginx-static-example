FROM nginx

COPY term.ws.conf /etc/nginx/conf.d/term.ws.conf

COPY html /usr/share/nginx/html