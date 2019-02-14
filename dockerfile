FROM php:7.0-apache

MAINTAINER Francisco Romero "4afromero@gmail.com"

RUN apt-get update -y && apt-get upgrade -y;\
    docker-php-ext-install mysqli;\
    rm -r /var/www/html/*;\
    apt-get clean && rm -rf /var/lib/apt/lists/*;

COPY ./aplicacion /var/www/html/

CMD apache2ctl -D FOREGROUND

