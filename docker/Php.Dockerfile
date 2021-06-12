FROM php:8.0.7-fpm


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN  apt-get update && apt-get install -y zip unzip \
  && docker-php-ext-install pdo pdo_mysql fileinfo

# WORKDIR /var/www/main_App
# ADD . /var/www/main_App

# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer 
# RUN cd /var/www/main_App \ && composer install --prefer-dist 
# RUN cd /var/www/main_App \ && composer update