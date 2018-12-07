#FROM geshan/php-composer-alpine:php7
FROM composer:1.8

RUN mkdir /source

COPY . /source

WORKDIR /source

RUN composer install --prefer-dist

EXPOSE 9183

CMD ["php", "-S", "0.0.0.0:9183", "/source/index.php"]
#CMD ["tail", "-f", "/dev/null"]
