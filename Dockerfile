FROM php:5-apache
MAINTAINER jekkos
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    php5-gd \
    php5-apcu

RUN a2enmod rewrite
RUN docker-php-ext-install mysql mysqli bcmath
