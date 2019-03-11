server {
    root "/var/www/exposuresoftware.com/public";
    index index.php;

    server_name exposuresoftware.com www.exposuresoftware.com;

    location / {
        try_files $uri $uri/ /index.php?query_string;
    }

    location ^~ /.well-known/ {
        allow all;
        access_log off;
        log_not_found off;
        root "/var/www/exposuresoftware.com";
        autoindex off;
        try_files $uri $uri/ =404;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/var/run/php/php7.2-fpm.sock;
    }

    location ~ /\.ht {
        deny all;
    }

    listen [::]:443 ssl ipv6only=on;
    listen 443 ssl;
    ssl_certificate /etc/letsencrypt/live/exposuresoftware.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/exposuresoftware.com/privkey.pem;
    include /etc/letsencrypt/options-ssl-nginx.conf;
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem;
}

server {
    listen 80;
    listen [::]:80;

    server_name exposuresoftware.com www.exposuresoftware.com;
    return 301 https://$host$request_uri;
}

