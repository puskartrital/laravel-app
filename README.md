<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About project 
    Laravel 8 production level fresh installation ready repo with mysql phpmyadmin setup with persistent storage option.

    Running this app:
    1. docker, docker-compose must be installed on the system.
    2. clone repo inside your directory and within that directory open terminal and run 3&4 step.
    3. make sure to edit .env and set app debug to true
    4. docker-compose up
    5. ctrl+c
    6. if user donot exists and group already create it first
    7. groupadd -r www-data && useradd -g www-data www-data    
    8. sudo chown -R www-data:www-data web/    
    9. docker-compose up -d
    10. now whenever you need to change you can edit inside web/ it will be updated live!
    11. enjoy :)

    if faced issue with connection refused refresh run migrations and try

    for dev purpose only not recommended for production
    
    laravel: http://localhost:8000 //if you want to change the port change it in docker-compose.yml make sure specified port is available.

    //for setting environments do it yourself you already have root access for database.

    You're welcome to use this repo, For your queries reach me at: http://bit.ly/PuskarTritalContact


    Contact: http://bit.ly/PuskarTritalContact

* Note: Use it on your own risk!!!