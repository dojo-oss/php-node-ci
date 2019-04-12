FROM alpine:3.7

# Install system dependencies
RUN apk --no-cache add --update --progress \
    php7 curl nodejs

# Install composer for PHP
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin --filename=composer
