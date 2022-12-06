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



