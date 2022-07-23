#!/bin/sh


SHARE_DIR=/root/share
DATA_DIR=/root/data


function link_share {
    mkdir -p $SHARE_DIR/$1
    ln -s $SHARE_DIR/$1 $2
}

function link_data {
    mkdir -p $DATA_DIR/$1
    ln -s $DATA_DIR/$1 $2
}


link_data m2 /root/.m2
link_data jenkins /root/.jenkins

cd /opt &&
java -jar jenkins.war
