FROM php:7.0-cli
RUN docker-php-ext-install sockets
# EXPOSE 0-64000
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "php", "./server.php" ]
