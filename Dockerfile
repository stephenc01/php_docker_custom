FROM php:5.6-apache
COPY sources.list /etc/apt/
RUN apt-get update && apt-get install -y
