FROM php:7.2-fpm-alpine
RUN apk update \
    && apk upgrade \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install opcache \
    && echo "memory_limit=256M" > /usr/local/etc/php/conf.d/dlamp.ini \ 
    && echo "post_max_size=132M" >> /usr/local/etc/php/conf.d/dlamp.ini \ 
    && echo "upload_max_filesize=128M" >> /usr/local/etc/php/conf.d/dlamp.ini 