FROM node

WORKDIR /var/www/main_App
ADD ./ ./


# RUN  cd /var/www/main_App && composer update