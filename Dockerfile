# Use the official PHP image with Apache
FROM php:7.4-apache

# Set the working directory
WORKDIR /var/www/html

# Copy your application source code into the container
COPY . .

# Install any PHP extensions you need
RUN docker-php-ext-install mysqli

# Expose port 80 to be able to access the container externally
EXPOSE 80
