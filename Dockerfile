FROM alpine:3.7

# Install system dependencies
RUN apk --no-cache add --update --progress \
    curl php7 php7-mbstring php7-json php7-phar \
    php7-openssl nodejs

# Install composer for PHP
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin --filename=composer

ENTRYPOINT /bin/sh
