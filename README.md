如果需要Docker在启动后就自动运行

通过DockerFile重新构建镜像，指定启动运行的服务

Dockerfile 示例如下：

FROM centos

MAINTAINER Daniel

RUN <填写构建Docker时需要运行的命令>

ENV  MYENV /XX/XX

CMD <容器每次启动时运行的命令, 只能有一个CMD>

编写完后，运行：

docker build -t 镜像名:标签 <Dockerfile所在的目录>
# docker build -t centos:daniel .

