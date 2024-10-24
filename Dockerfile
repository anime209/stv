FROM php:8.0-apache



COPY . /var/www/html
WORKDIR /var/www/html


# Expose port 80
EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html"]