

* 1. 搜索有apache的docker image:
```
docker search httpd
```

* 2. Pull Apache Image
```
docker pull docker.io/httpd

```
* 3. 啟動 Apache 服務

```
docker run -itd --name MyAapche -p 8085:80 docker.io/httpd:latest

```
