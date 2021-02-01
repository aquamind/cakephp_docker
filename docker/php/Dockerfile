FROM php:7.4-fpm
# COPY php.ini /usr/local/etc/php/

RUN apt-get update \
    && apt-get install -y zlib1g-dev libzip-dev libicu-dev libpq-dev unzip git \
    && docker-php-ext-install zip intl pdo_pgsql
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

#Composer install
COPY --from=composer /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer

WORKDIR /var/www/html/
