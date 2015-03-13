FROM dockerfile/ubuntu

MAINTAINER Daniel Paschke <paschan@wirkaufens.de>

# Base PHP-Nginx
RUN apt-get update && apt-get install -y curl nginx php5-fpm php5-cli php5-xdebug php5-mysql supervisor

# PHP Modules
RUN apt-get install -y php5-mongo php5-curl php5-intl

#Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# nginx nointeractive
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
