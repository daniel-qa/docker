
https://hub.docker.com/_/httpd

* 直接執行
```
docker run -dit --name MyApache -p 8080:80 httpd:2.4

```

<hr class="hr1"/>

* Build & Run Apache
```
docker build -t my-apache2 .
docker run -dit --name my-running-app -p 8080:80 my-apache2
```

* Dockerfile
```
FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
```



<hr class="hr1"/>

* 1.搜索有apache的docker image:
```
docker search httpd
```

* 2.Pull Apache Image
```
docker pull docker.io/httpd
```
* 3.啟動 Apache 服務

```
docker run -itd --name MyAapche -p 8085:80 docker.io/httpd:latest
```
