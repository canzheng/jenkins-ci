FROM jenkins:latest
MAINTAINER Can Zheng "can.zheng@tobox.cn"

USER root
RUN apt-get -q -y update && \
    apt-get -q -y install gradle
USER jenkins
