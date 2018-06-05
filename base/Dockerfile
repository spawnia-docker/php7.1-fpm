FROM alpine:3.7
LABEL maintainer="Benedikt Franke <benedikt@franke.tech>"

ENV PHP_MAX_EXECUTION_TIME=240
ENV PHP_MEMORY_LIMIT=128M
ENV PHP_MAX_INPUT_VARS=4096

# ensure www-data user exists
RUN set -x \
    && addgroup -g 82 -S www-data \
    && adduser -u 82 -D -S -G www-data www-data

WORKDIR /var/www

EXPOSE 9000

CMD ["php-fpm7", "-F"]

ENV LD_PRELOAD="/usr/lib/preloadable_libiconv.so php"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk --update --no-cache add \
            gnu-libiconv \
            php7-ctype \
            php7-fpm \
            php7-iconv \
            php7-json \
            php7-mbstring \
            php7-pdo \
            php7-pdo_mysql \
            php7-session \
            php7-tokenizer \
            php7-ldap \
    && rm -rf /var/cache/apk/*

COPY content /
