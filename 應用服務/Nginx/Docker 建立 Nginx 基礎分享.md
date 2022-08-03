https://medium.com/@xroms123/docker-%E5%BB%BA%E7%AB%8B-nginx-%E5%9F%BA%E7%A4%8E%E5%88%86%E4%BA%AB-68c0771457fb

# Docker 建立 Nginx 基礎分享

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
