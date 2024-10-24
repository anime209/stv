FROM php:8.3.13-apache

# Enable the extensions
RUN docker-php-ext-install fileinfo iconv zip mbstring

# Install tar
RUN apt-get update && apt-get install -y tar

# Clean up to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Configure Apache
COPY . /var/www/html/
EXPOSE 80
CMD ["apache2-foreground"]