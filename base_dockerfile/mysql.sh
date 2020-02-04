#!/bin/bash
docker build --build-arg db_root_pw=rootpw

# Must tag first
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -d mysql
