# 第 I 部分 - 容器的網絡連接選項
## HOST mode:
使用和主機一樣的Port
```
 docker run –d –-name nginx-1 –net=host nginx
```
## BRIDGE mode:

Host_IP:Host_port 組合轉換為特定的“內部  Container_IP:Container_port 組合

使用 NET 協定和 iptables 進行 ip 的位置轉換

```
docker run –d –-name nginx-1 -p 10000:80 nginx
docker run –d –-name nginx-2 -p 10001:80 nginx
```


##　VIRTUAL NETWORK mode (a.k.a USER mode, a.k.a OVERLAY mode)
