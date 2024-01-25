#!/usr/bin/env bash

aws s3 cp s3://exposuresoftware-configs/exposure.env /usr/share/nginx/exposure/.env
cd /usr/share/nginx/exposure || exit 1
su nginx -s /bin/bash -c "php artisan migrate --force"
aws s3 cp s3://exposuresoftware-configs/exposure.conf /etc/nginx/sites-enabled/exposure.conf
service nginx restart
