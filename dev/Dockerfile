FROM spawnia/php7.1-fpm
LABEL maintainer="Benedikt Franke <benedikt.franke@zoho.com>"

# Add user same as the host os user
RUN set -x \
    && adduser -u 1000 -D -S -G www-data me

RUN apk --update --no-cache add \
        curl \
        php7-zlib \
    && rm -rf /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
