#!/usr/bin/env sh

deploy_dir="/home/user-data/www/bugabinga.net/"
scp bugabinga.min.svg index.html style.css gpg.asc box:"$deploy_dir"

ssh box 'chown www-data:www-data "$deploy_dir"*'
