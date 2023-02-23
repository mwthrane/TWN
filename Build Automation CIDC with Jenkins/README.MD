## Run jenkins docker
```bash
 docker run -p 8080:8080 -p 50000:50000 -d \
-v jenkins_home:/var/jenkins_home jenkins/jenkins:lts

```
Get the password for Jenkins install:
``` 
docker exec -it 549f943a974c bash
cat /var/jenkins_home/secrets/initialAdminPassword 
```
### Setup Jenkins build tools, NPM, nodejs

```
docker ps
docker exec -it -u 0 549f943a974c bash
curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt install npm

```

### Make Docker avail inside Jenkins container, mapped from host

```
docker run -p 8080:8080 -p 50000:50000 -d \
-v docker_jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock jenkins/jenkins:lts

docker exec -it -u0 0a9b3a806bff bash

curl https://get.docker.com > dockerinstall && chmod 777 dockerinstall && ./dockerinstall

sudo chmod 666 /var/run/docker.sock
```

### build and push docker image from jenkins to docker hub

```
docker build -t mwthrane/demo-app:JMA-1.1 .

echo $PASSWORD | docker login -u $USERNAME --password-stdin
docker push mwthrane/demo-app:JMA-1.1
```

### clone project to dockerize

```
git clone git@github.com:mwthrane/node-project2.git
```
### Create dockerfile in the root
```
FROM node:13-alpine

RUN mkdir -p /usr/app
COPY app/* /usr/app/

WORKDIR /usr/app
EXPOSE 3000

RUN npm install
CMD ["node", "server.js"]

```
### Build and run it
```
docker build -t node-project:1.0 .
docker run node-project:1.0
app listening on port 3000!

```



