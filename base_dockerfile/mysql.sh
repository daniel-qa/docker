#!/bin/bash
docker build -t mysql-app:v1 --build-arg db_root_pw=pwd .

# 指定 檔案
# docker build -f dockerfile_mysql

# 指定 tag
# docker build -t myqpp:v1  .

# Run
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -d mysql
