# Use a previous stage as a new stage

## Debian Base OS 
FROM debian:10 AS builder
RUN apt-get update -y && apt-get upgrade -y && apt-get install sudo -y
RUN apt-get install nano -y && apt-get install wget -y
# Debug
RUN apt-get install procps -y
# start.sh
RUN echo "#!/bin/bash" >> /start.sh && \
    echo "service nginx start" >> /start.sh && \
	echo "service php7.4-fpm start" >> /start.sh && \
    echo "/bin/bash" >> /start.sh && \	
	chmod a+x /start.sh

## Nginx
FROM builder AS build1
RUN apt-get install nginx -y
COPY default /etc/nginx/sites-available/default

### Php-Fpm
FROM build1 AS build2

# Install Depence
RUN apt -y install lsb-release apt-transport-https ca-certificates 
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
RUN apt update
# Install php
RUN sudo apt -y install php7.4
# Install php-fpm
RUN sudo apt install php7.4-fpm php7.4-common php7.4-mysql php7.4-gmp php7.4-curl \
		php7.4-intl php7.4-mbstring php7.4-xmlrpc php7.4-gd php7.4-xml php7.4-cli \
		php7.4-zip php7.4-soap php7.4-imap -y

# Add nginx to www-data group
RUN sudo usermod -a -G www-data nginx
# Change owner of directory to www-data
RUN sudo chown -R www-data /var/www
