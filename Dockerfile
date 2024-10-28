FROM php:8.0-apache
COPY . /var/www/html
WORKDIR /var/www/html
EXPOSE 80
RUN echo "Asia/Ho_Chi_Minh" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html"]