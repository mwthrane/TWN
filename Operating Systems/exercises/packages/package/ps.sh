#!/bin/bash

apt update

apt install -y nodejs npm curl net-tools
echo "Type log dir"
read LOG_DIRECTORY
echo "type package dir"
read PACKAGE_DIRECTORY


# Check log dir
if [-d "$LOG_DIRECTORY"]
then
        echo "LOG dir exists"
else
        mkdir -p $LOG_DIRECTORY
        echo "$LOG_DIRECTORY created"
fi

#Check package dir and download package
if [-d "$PACKAGE_DIRECTORY"]
then
	echo "Package dir exists"
else 
	mkdir -p $PACKAGE_DIRECTORY
	echo "$PACKAGE_DIRECTORY created"
	cd $PACKAGE_DIRECTORY
        wget https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz
        tar zxvf ./bootcamp-node-envvars-project-1.0.0.tgz
fi

cd "/home/thrane/TWN/Operating Systems/exercises/packages/package"
pwd

export APP_ENV=dev
export DB_USER=myuser
export DB_PWD=mysecret
export LOG_DIR=$LOG_DIRECTORY

npm install
node server.js &

ps aux | grep node 
netstat -ltnp | grep :3000

