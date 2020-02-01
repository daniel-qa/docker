# docker
about docker 

如果需要Docker在启动后就自动运行 /etc/rc.d/rc.local，有下面的两种方式：

方法一：通过Docker命令

docker run image /bin/bash -c "/etc/rc.d/rc.local; <your command>"

eg.

docker run -itd myimage:test /bin/bash -c "/etc/rc.d/rc.local;/bin/bash"
方法二：通过DockerFile重新构建镜像，指定启动运行的服务

Dockerfile 示例如下：

FROM centos

MAINTAINER Johnnian<johnnian@126.com>

RUN <填写构建Docker时需要运行的命令>

ENV  MYENV /XX/XX

CMD <容器每次启动时运行的命令, 只能有一个CMD>

编写完后，运行：

docker build -t 镜像名:标签 <Dockerfile所在的目录>
# docker build -t centos:johnnian .

docker run -itd 新镜像名
附：参考现成的Dockerfile，如mysql的Dockerfile
