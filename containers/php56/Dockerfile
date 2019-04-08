FROM php:5.6-fpm-alpine
RUN apk update; \
    apk upgrade;
    RUN docker-php-ext-install pdo_mysql

ENV PATH="/opt/bin:${PATH}"