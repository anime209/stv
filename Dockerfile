FROM php:latest

# Install any needed packages
RUN apt-get update && apt-get install -y \
    git \
    unzip

# Copy your PHP code into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Expose port 80 to the outside world
EXPOSE 80

# Run PHP built-in server
CMD ["php", "-S", "0.0.0.0:80", "-t", "/app"]
