FROM php:7.4-fpm
ENV DEBIAN_FRONTEND=noninteractive
ENV LOG_CHANNEL=stderr
LABEL maintainer="pt@puskartrital.com"
RUN apt-get update && apt-get install -y \    
    vim \
    net-tools \
    git \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*    
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo pdo_mysql && docker-php-ext-enable pdo_mysql
RUN rm -rf /var/www/html
WORKDIR /app
COPY ./web  /app
RUN composer require predis/predis
RUN composer require laravel/ui:3.x
RUN composer update
RUN composer install --no-dev
RUN composer dump-autoload
RUN php artisan ui:auth
CMD php artisan serve --host=0.0.0.0 --port=8000
EXPOSE 8000
