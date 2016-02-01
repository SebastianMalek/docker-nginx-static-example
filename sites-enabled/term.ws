server {
    listen 80;
    listen [::]:80;
    
    root /var/www/html;
    
    index index.html index.htm;
    
    server_name www.term.ws term.ws;
    
    location / {
        try_files $uri $uri/ =404;
    }
    
    location ~ /\.ht {
        deny all;
    }
}