FROM php:5.6-apache
COPY sources.list /etc/apt/
RUN apt-get update && apt-get install -y
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions calendar mysql mysqli mbstring
