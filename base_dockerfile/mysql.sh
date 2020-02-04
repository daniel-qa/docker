#!/bin/bash
docker build --build-arg db_root_pw=rootpw


# 指定 檔案
# docker build -f dockerfile_mysql


# 指定 tag
# docker build -t myqpp:v1  .


# Must tag first
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -d mysql
