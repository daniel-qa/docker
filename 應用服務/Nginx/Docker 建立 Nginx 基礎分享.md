https://medium.com/@xroms123/docker-%E5%BB%BA%E7%AB%8B-nginx-%E5%9F%BA%E7%A4%8E%E5%88%86%E4%BA%AB-68c0771457fb

# Docker 建立 Nginx 基礎分享
## 使用Docker指令建立Nginx 環境：
index.html
```
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Docker nginx</title>
</head>
<body>
  Hello world!
</body>
</html>
```
* 下載Nginx image
```
docker pull nginx
```
* 創建並啟動Nginx container
```
docker run --name container名稱 -p 8080:80 -v index.html所在路徑:
           /usr/share/nginx/html -d nginx
           
docker run --name mynginx -p 8080:80 -v ./:
           /usr/share/nginx/html -d nginx
```
## 使用Dockerfile建立Nginx環境：

### 先建立下面三個檔案

* index.html 
```
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Docker nginx</title>
</head>
<body>
  Hello world!
</body>
</html>
```

* nginx.conf
```
server{
  listen       80 default_server;
  listen       [::]:80 default_server;
  server_name  lou.com;
  root         /usr/share/nginx/html;
  index        index.html;
  charset utf-8;
  access_log /var/log/nginx/access_log;
  error_log /var/log/nginx/error_log;
}
```
* dockerfile
```
FROM nginx
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
```
### 使用Dockerfile創建image

沒輸入版本則為預設值latest
```
docker build -t mynginx:latest .
```
docker images 查看是否創建成功
```
docker images
```
* 創建並啟動 container
```
docker run --name container名字 -p 8080:80 -d image名字

docker run --name mynginx -p 8080:80 -d mynginx:latest

```
成功後可以在瀏覽器看到 Hello World!
