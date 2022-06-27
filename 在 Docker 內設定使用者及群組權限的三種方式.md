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
