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
