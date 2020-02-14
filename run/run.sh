#!/bin/bash

# ubuntu
docker run -it --name myubuntu -p 5800:80 5022:22 -v /opt/htdocs/ies:/opt/lampp/htdocs/ ubuntu:16.04 /bin/bash


# cnetos
docker run -it --name myos -p 127.0.0.1::80 127.0.0.1:22 -v /opt/htdocs/ies:/opt/lampp/htdocs/ centos:6.8 /bin/bash

