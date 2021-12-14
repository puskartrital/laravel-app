FROM php:8.0-apache
ENV DEBIAN_FRONTEND=noninteractive
LABEL maintainer="pt@puskartrital.com"
RUN apt-get update && apt-get install -y \    
    vim \
    net-tools \
    git \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*    
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN rm -rf /var/www/html
RUN a2enmod rewrite
RUN echo "ServerTokens Prod" >> /etc/apache2/apache2.conf
RUN echo "ServerSignature Off" >> /etc/apache2/apache2.conf
RUN  sed -i 's/html/\/html\/public/g' /etc/apache2/sites-enabled/000-default.conf
ADD  --chown=www-data:www-data ./web  /var/www/html
WORKDIR /var/www/html
RUN composer require laravel/ui:3.x
RUN composer update
RUN composer install
RUN composer dump-autoload
RUN php artisan optimize:clear
RUN php artisan ui:auth
EXPOSE 80
USER www-data
