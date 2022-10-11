#!/bin/bash

apt update

NEW_USER=myTESTapp

apt install -y nodejs npm curl net-tools
echo "Type log dir"
read LOG_DIRECTORY
echo "type package dir"
read PACKAGE_DIRECTORY


# display nodeJS version
node_version=$(node --version)
echo "NodeJS version $node_version installed"

# display npm version
npm_version=$(npm --version)
echo "NPM version $npm_version installed"

# Check log dir
if [-d "$LOG_DIRECTORY"]
then
        echo "LOG dir exists"
else
        mkdir -p $LOG_DIRECTORY
        echo "$LOG_DIRECTORY created"
fi

useradd $NEW_USER -m
chown $NEW_USER -R $LOG_DIRECTORY


#Check package dir and download package
if [-d "$PACKAGE_DIRECTORY"]
then
	echo "Package dir exists"
else 
	runuser -l $NEW_USER -c "mkdir -p $PACKAGE_DIRECTORY"
	echo "$PACKAGE_DIRECTORY created"
        runuser -l $NEW_USER -c "cd $PACKAGE_DIRECTORY"
        runuser -l $NEW_USER -c "wget https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz"
        runuser -l $NEW_USER -c "tar zxvf ./bootcamp-node-envvars-project-1.0.0.tgz"
fi

runuser -l $NEW_USER -c "
export APP_ENV=dev &&
export DB_USER=myuser &&
export DB_PWD=mysecret &&
export LOG_DIR=$LOG_DIRECTORY &&
cd package &&
npm install &&
node server.js &"

ps aux | grep node 
netstat -ltnp | grep :3000

