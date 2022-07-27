
https://hub.docker.com/_/nginx

https://medium.com/@xroms123/docker-%E5%BB%BA%E7%AB%8B-nginx-%E5%9F%BA%E7%A4%8E%E5%88%86%E4%BA%AB-68c0771457fb

* index.html 內容
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

* 安裝
```
docker pull nginx 

```
* 啟動Nginx container
```
docker run --name mynginx -p 8080:80 -v ./index.html:
           /usr/share/nginx/html -d nginx
           
docker run --name mynginx -p 8080:80  -d nginx
           
```

瀏覽器輸入 localhost:8080 
會出現 Hello world!** 的字樣
> **Hello world!**

如果沒有設定 index.html
則會出現 nginx 預設字樣

> **Wellcome to Nginx!**

