#!/bin/bash

# ubuntu
docker run -it -p --name myos -p 5800:80 5022:22 -v /opt/htdocs/ies:/opt/lampp/htdocs/ ubuntu:16.04 /bin/bash

