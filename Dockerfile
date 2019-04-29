FROM alpine:3.7

# Install system dependencies
RUN apk --no-cache add --update --progress \
    curl git zip unzip openssh-client php7 \
    php7-mbstring php7-json php7-curl php7-phar \
    php7-openssl nodejs

# Install composer for PHP
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin --filename=composer

# Burst composer performance
RUN composer global require hirak/prestissimo

ENTRYPOINT /bin/sh
