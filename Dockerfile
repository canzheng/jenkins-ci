FROM jenkins:latest
MAINTAINER Can Zheng "can.zheng@tobox.cn"

USER root

RUN apt-get install -y unzip
RUN mkdir /opt/gradle
RUN curl -L https://services.gradle.org/distributions/gradle-2.10-bin.zip -o gradle-2.10-bin.zip
RUN unzip -oq gradle-2.10-bin.zip -d /opt/gradle
ENV GRADLE_HOME=/opt/gradle/gradle-2.10
ENV PATH=$PATH:$GRADLE_HOME/bin
USER jenkins
