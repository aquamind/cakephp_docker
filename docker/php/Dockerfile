FROM php:7.4-fpm

RUN apt-get update \
  && apt-get install -y zlib1g-dev libzip-dev unzip libjpeg-dev libpq-dev libicu-dev libonig-dev libxslt-dev \
  && docker-php-ext-install zip intl pdo_pgsql mbstring simplexml

RUN pecl install xdebug \
  && docker-php-ext-enable xdebug

#Composer install
COPY --from=composer:1.10.20 /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer

ENV PATH $PATH:/composer/vendor/bin

WORKDIR /var/www/html/
