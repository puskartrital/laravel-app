FROM php:8.0-fpm
LABEL maintainer="pt@puskartrital.com"
RUN apt-get update -y && apt-get install -y libmcrypt-dev openssl wget unzip git
RUN docker-php-ext-install pdo 
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo  
WORKDIR /app
COPY . /app
RUN composer update
RUN composer install
CMD php artisan serve --host=0.0.0.0 --port=8000
EXPOSE 8000