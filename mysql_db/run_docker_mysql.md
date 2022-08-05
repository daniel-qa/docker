#!/bin/bash
docker run --name some-mysql \
-e MYSQL_ROOT_PASSWORD=my-secret-pw \
-d mysql:tag --character-set-server=utf8mb4 \
--collation-server=utf8mb4_unicode_ci



# If you would like to see a complete list of available options, just run:
# docker run -it --rm mysql:tag --verbose --help

docker run --name mydb -e MYSQL_ROOT_PASSWORD=root -v D:\docker\mysql\mydb:/var/lib/mysql -d mysql:8.0

p.s /var/lib/mysql 的資料夾，權限為 mysql

```
chown -R mysql:mysql

```
