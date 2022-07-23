#!/bin/sh

SHARE_DIR=/root/share
DATA_DIR=/root/data

mkdir -p $DATA_DIR/jenkins
ln -s $DATA_DIR/jenkins /root/.jenkins

cd /opt &&
java -jar jenkins.war
