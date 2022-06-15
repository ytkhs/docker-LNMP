FROM php:8.0-fpm
COPY php.ini /usr/local/etc/php/

RUN apt-get update \
    && apt-get install -y libpq-dev libzip-dev \
    && docker-php-ext-install pdo_mysql pdo_pgsql mysqli zip