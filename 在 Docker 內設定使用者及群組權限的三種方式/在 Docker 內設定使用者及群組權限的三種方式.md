# 在 Docker 內設定使用者及群組權限的三種方式

* 使用 docker 指令時指定使用者
```
進入 Ubuntu 容器會透過底下指令:

docker run -ti ubuntu /bin/bash
這時候可以透過 -u 方式將使用者 uid 及群組 gid 傳入容器內。

mkdir tmp
docker run -ti -v $PWD/tmp:/test \
  -u uid:gid ubuntu /bin/bash
如何找到目前使用者 uid 及 gid 呢，可以透過底下方式

id -u
id -g
上述指令可以改成:

docker run -ti -v $PWD/tmp:/test \
  -u $(id -u):$(id -g) ubuntu /bin/bash
```

* 使用 Dockerfile 指定使用者
```
# Dockerfile

USER 1000:1000
```

* 透過 docker-compose 指定權限
```
services:
  agent:
    image: xxxxxxxx
    restart: always
    networks:
      - proxy
    logging:
      options:
        max-size: "100k"
        max-file: "3"
    volumes:
      - ${STORAGE_PATH}:/data
    user: ${CURRENT_UID}
 ```
 * 接著可以透過 .env 來指定變數值
 ```
STORAGE_PATH=/home/deploy/xxxx
CURRENT_UID=1001:1001
 ```
* www-data 用戶
```
* 伺服器 Ｗeb server(Apache or Nginx) 是誰
在系統裡由 www-data 這個系統使用者表示
因此在將專案的擁有群組設為 www-data
sudo chown -R sarahcheng.www-data shopping_cart/
sudo chmod -R 755 shopping_cart/
drwx r-x r-x

* www-data 是什麼
www-data 是一個 system user。給 web servers 使用的特定 user/group。 
設定某資料夾為 www-data 是希望 web servers 不要有太高的權限，
同時讓 web application 適當進行寫入。

```

```
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin

```
