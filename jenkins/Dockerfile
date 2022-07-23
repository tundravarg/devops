FROM alpine:3.16.1

RUN apk update && apk upgrade

RUN apk add openjdk17
RUN apk add maven
RUN apk add gradle

# Needed for Jenkins
RUN apk add ttf-dejavu

RUN cd /opt && \
    wget https://get.jenkins.io/war-stable/2.346.2/jenkins.war

WORKDIR /root

ENTRYPOINT [ "sh", "/root/share/init.sh" ]
# ENTRYPOINT [ "sh" ]