# 1 在 Dockerfile 中安裝 supervisor
```
RUN apt-get install -y supervisor
```
# 2 像這樣為主管創建一個配置文件（名為 supervisord.conf ）
```
[include]

files = /etc/supervisor/conf.d/*.conf

[program:app]

command=bash

#directory will be any folder where you wnat supervisor to cd before executing.
directory=/project 

autostart=true

autorestart=true

startretries=3

#user will be anyone you want but make sure that user will have the enough privilage.

user=root

[supervisord]

nodaemon=true

[supervisorctl]
```

# 3 將supervisor conf文件複製到docker

```
COPY supervisord.conf /etc/supervisord.conf
#4 定義入口點

ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]
就是這樣，現在只需構建文件並運行容器。它將保持容器運行。

```
