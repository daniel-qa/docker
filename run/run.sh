#!/bin/bash

# ubuntu
docker run -it --name myubuntu -p 5800:80 5022:22 -v /opt/htdocs/ies:/opt/lampp/htdocs/ ubuntu:16.04 /bin/bash


# cnetos
docker run -it --name myos -p 127.0.0.1::80 -p 127.0.0.1:22 -v /opt/htdocs/ies:/opt/lampp/htdocs/ centos:6.8 /bin/bash


# mysql 5.7
docker run --name sokdb -p 3306:3306 -v /opt/dockerfile/mysql57/volume1:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=1234 --restart=always -d mysql:5.7


