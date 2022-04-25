# 第 I 部分 - 容器的網絡連接選項
## HOST mode:
使用和主機一樣的Port
```
 docker run –d –-name nginx-1 –net=host nginx
```
## BRIDGE mode:

Host_IP:Host_port 組合轉換為特定的“內部  Container_IP:Container_port 組合
