FROM php:8.0-apache

# Install tar
RUN docker-php-ext-install fileinfo iconv zip mbstring


COPY . /var/www/html
WORKDIR /var/www/html


# Expose port 80
EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html"]