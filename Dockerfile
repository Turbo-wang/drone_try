# Docker image for springboot file run
# VERSION 0.0.1
# Author: 
# Hao Wang
FROM openjdk:17
# 作者
LABEL maintainer="haowang"
# VOLUME 指定了临时文件目录为/tmp。
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
VOLUME /tmp 
EXPOSE 7000
# 将jar包添加到容器中并更名为xx.jar
# 运行jar包
ENTRYPOINT ["echo","-Dspring.profiles.active=test"]