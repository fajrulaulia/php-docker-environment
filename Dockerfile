FROM php:8-fpm
RUN docker-php-ext-install mysqli

ADD nginx/default.conf /etc/nginx/conf.d
WORKDIR /var/www/html
COPY ./src /var/www/html



# FROM nginx:alpine
# ADD nginx/default.conf /etc/nginx/conf.d
# RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

