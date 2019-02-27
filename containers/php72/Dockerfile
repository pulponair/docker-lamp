FROM php:7.2-fpm-alpine
RUN apk update \
    && apk upgrade \
    && docker-php-ext-install pdo_mysql

COPY local.ini /usr/local/etc/php/conf.d/
