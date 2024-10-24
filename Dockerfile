FROM php:8.3-apache

# Enable the extensions
RUN docker-php-ext-install fileinfo iconv zip mbstring

# Install tar
RUN apt-get update && apt-get install -y tar

# Clean up to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . /var/www/html

# Set file permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]