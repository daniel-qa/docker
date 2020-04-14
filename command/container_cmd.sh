#!/bin/bash

# 查看容器詳情 inspect  

docker inspect e36664e9b3d8   # 後面是容器id，或 name

#  執行容器命令
docker exec eede6d35b47d /bin/ping localhost

 
