FROM php:7.2-fpm-alpine
RUN apk update \
    && apk upgrade \
    && apk add \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev \
        icu-dev \
    && docker-php-ext-configure gd \
               --enable-gd-native-ttf \
               --with-freetype-dir=/usr/include/freetype2 \
               --with-png-dir=/usr/include \
               --with-jpeg-dir=/usr/include \
    && docker-php-ext-install pdo_mysql mysqli opcache gd zip intl \
    && echo "memory_limit=256M" > /usr/local/etc/php/conf.d/dlamp.ini \
    && echo "max_input_vars=1500" > /usr/local/etc/php/conf.d/dlamp.ini \
    && echo "post_max_size=132M" >> /usr/local/etc/php/conf.d/dlamp.ini \
    && echo "max_execution_time=240" >> /usr/local/etc/php/conf.d/dlamp.ini \
    && echo "upload_max_filesize=128M" >> /usr/local/etc/php/conf.d/dlamp.ini \
    && echo "log_errors = On"  >> /usr/local/etc/php/conf.d/dlamp.ini \
    && echo "error_log = /dev/stderr"  >> /usr/local/etc/php/conf.d/dlamp.ini \
    && mkdir /opt/bin \
    && curl --silent --output composer-setup.php  https://getcomposer.org/installer \
    && php composer-setup.php --install-dir=/opt/bin/ --filename=composer --quiet \
    && rm composer-setup.php

ENV PATH="/opt/bin:${PATH}"