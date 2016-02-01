docker run -d -p 80:80 dockerfile/nginx
docker run -d -p 80:80 -v sites-enabled:/etc/nginx/conf.d -v html:/var/www/html dockerfile/nginx