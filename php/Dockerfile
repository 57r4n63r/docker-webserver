FROM php:7.0-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libcurl3-dev \
        zlib1g-dev \
        libicu-dev \
        g++ \
        libxml2-dev \
        libxslt-dev \
        libfreetype6-dev

#configure freetype
RUN docker-php-ext-configure \
        gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

# install php extensions
RUN docker-php-ext-install \
        pdo \
        pdo_mysql \
        mysqli mcrypt \
        bcmath \
        curl \
        gd \
        intl \
        xml \
        soap \
        xsl \
        zip

#enable rewrite in apache
RUN a2enmod rewrite
