FROM php:7.1-fpm-alpine
MAINTAINER benedikt.franke@twofour.de

ENV PHP_MAX_EXECUTION_TIME=240
ENV PHP_MEMORY_LIMIT=128M
ENV PHP_MAX_INPUT_VARS=4096

RUN apk --no-cache update \
    && apk add --no-cache \
        libpng \
        libpng-dev \
        libjpeg \
        libjpeg-turbo-dev \
        freetype \
        freetype-dev \
        openssl \
    && docker-php-ext-configure gd --with-png-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-freetype-dir=/usr/include/ \
    && docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) \
            gd \
            zip \
            mysqli \
    && apk del \
            libpng-dev \
            libjpeg-turbo-dev \
            freetype-dev

COPY content /

WORKDIR /var/www
