## Docker commands

```
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

```
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
```
sudo docker network create monto_network
```

Run a container example
```
sudo docker run -d \
-p 27017:27017 \
-e variable \
-e variable \
--name container_name \
--net network_name
mongo

```



