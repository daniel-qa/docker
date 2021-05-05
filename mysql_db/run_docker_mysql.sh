#!/bin/bash
docker run --name some-mysql \
-e MYSQL_ROOT_PASSWORD=my-secret-pw \
-d mysql:tag --character-set-server=utf8mb4 \
--collation-server=utf8mb4_unicode_ci



# If you would like to see a complete list of available options, just run:
# docker run -it --rm mysql:tag --verbose --help

