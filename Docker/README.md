## Docker commands

```bash
# start docker service ubuntu
sudo dockerd

# download an image
sudo docker pull image

# start new container
sudo docker run image

# Run container in the backgroup
sudo docker run -d image

# Stop container
sudo docker stop id

#list containers
sudo docker ps -a

# Start container on a port.
# First port is the host, second is the container

sudo docker run -p6000:6378 redis

```

### Docker debug commands

```bash
# Get logs
sudo docker logs

# use --name to name a container.

# enter a docker container 
sudo docker exec -it id/name /bin/bash

```

docker run builds a container from an image

docker start, start, a container

## Developing with Docker

Create a docker network
```bash
sudo docker network create monto_network
```

Run a container example
```bash
sudo docker run -d \
-p 27017:27017 \
-e variable \
-e variable \
--name container_name \
--net network_name
mongo

```
## Run a container using docker compose

Run:
```bash
sudo docker-compose -f docker-compose.yaml up

```

```yaml
version: '3'
services:
  mongodb:
    image: mongo
    ports:
     - 27017:27017
    environment:
     - MONGO_INITDB_ROOT_USERNAME=admin
     - MONGO_INITDB_ROOT_PASSWORD=password
  mongo-express:
    image: mongo-express
    ports:
     - 8080:8081
    environment:
     - ME_CONFIG_MONGODB_ADMINUSERNAME=admin
     - ME_CONFIG_MONGODB_ADMINPASSWORD=password
     - ME_CONFIG_MONGODB_SERVER=mongodb

```

### Dockerfile
Dockerfile is used to build a docker image.

A new image always builds on an existing image eg alpine.
```dockerfile
FROM node
```
Execute any Linux commands
```dockerfile
RUN mkdir -p /home/app
```
Define ENV
```dockerfile
ENV MONGO_DB_USERNAME=user \
    MONGO_DB_PASSWORD=pw
```



