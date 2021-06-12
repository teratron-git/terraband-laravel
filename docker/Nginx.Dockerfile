FROM nginx:mainline-alpine

ADD ./docker/conf/vhost.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/www/main_App