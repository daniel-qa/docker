#!/bin/bash

# 查看有什麼 image
docker search ubuntu

# 查看容器詳情 inspect  

docker inspect e36664e9b3d8   # 後面是容器id，或 name

#  執行容器命令
docker exec eede6d35b47d /bin/ping localhost

docker exec mysql_mysql-master_1 /bin/ping localhost


# 容器裡 dump db
mysqldump -uroot -proot publicitem_ies_tw > /docker-entrypoint-initdb.d/publicitem_ies_tw.sql

 
