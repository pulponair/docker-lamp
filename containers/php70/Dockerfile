FROM php:7.0-fpm-alpine
RUN apk update; \
    apk upgrade;
    RUN docker-php-ext-install pdo_mysql

ENV PATH="/opt/bin:${PATH}"
