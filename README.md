# PHP Docker Custom Images Repository

This repository contains custom Docker images for various PHP versions. The images are built and pushed to Docker Hub using GitHub Actions. This was created just for ease of use.

## Docker Images

The repository contains Dockerfiles for the following PHP configurations:

### PHP 5.6 with Apache

- **Base Image**: `php:5.6-apache`
- **Custom APT Sources**: A custom `sources.list` is copied to `/etc/apt/` for package management.
- **Installed PHP Extensions**: 
  - calendar
  - mysql
  - mysqli
  - mbstring
  - fileinfo

### PHP 8.0.30 with Apache

- **Base Image**: `php:8.0.30-apache`
- **Installed PHP Extension**: 
  - mysqli
  - pdo_mysql

### Latest Stable PHP with Apache

- **Base Image**: `php:apache`
- **Installed PHP Extension**: 
  - mysqli
  - pdo_mysql

## Usage

To use any of the Docker images, you can pull them from Docker Hub:

```bash
# For PHP 5.6
docker pull stephenc01/php_docker_custom:php5-modules

# For PHP 8.0
docker pull stephenc01/php_docker_custom:php8.0-modules

# For Latest Stable PHP
docker pull stephenc01/php_docker_custom:latest-modules

## Issues
- Any issues report to the upstream projects.
- If you need addtional PHP modules, open up an issue and ill add it.
