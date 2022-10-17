## Setting up gradle to push to Nexus

### In build.gradle

```java
apply plugin: 'maven-publish'

publishing {
    publications {
        maven(MavenPublication) {
            artifact("build/libs/my-app-$version" + ".jar") {
                extension 'jar'
            }
        }
    }
    repositories {
        maven {
            name 'nexus'
            url "http://167.172.102.226:8081/repository/maven-snapshots/"
            allowInsecureProtocol = true
            credentials {
                username project.repoUser
                password project.repoPassword
            }
        }
    }
}
```

in settings.gradle

```java

rootProject.name = 'my-app'

```

in gradle.properties

```java
repoUser = usr
repoPassword = pw

```

## Build and Publish Maven

In pom.xml 

```xml
<build>
        <pluginManagement>
            <plugins>
                <plugin>
                    <groupId>ord.apache.maven.plugins</groupId>
                    <artifactId>maven-deploy-plugin</artifactId>
                    <version>2.8.2</version>
                </plugin>
            </plugins>
        </pluginManagement>
        
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-deploy-plugin</artifactId>
            </plugin>
        </plugins>
    </build>
    
```

also in pom.xml

```xml
<distributionManagement>
    <snapshotRepository>
        <id>nexus-snapshots</id>
        <url>http://167.172.102.226:8081/repository/maven-snapshots/</url>
    </snapshotRepository>
</distributionManagement>


```

For user credentials. Create settings.xml in home directory

```xml

<settings>
 <servers>
  <server>
   <id>nexus-snapshots></id>
   <username>thrane</username>  
   <password>xxx<password>
  </server>
 </servers>
</settings>

```

To list repositories

```
curl -u usr:pwd X GET 'http://167.172.102.226:8081/service/rest/v1components?repository=maven-snapshots'

```

list a component

```

curl -u usr:pwd -X GET 'http://167.172.102.226:8081/service/rest/v1/components/bWF2ZW4tc25hcHNob3RzOjdkYzUyZmM2NjdkMWM4YjBlYzI0MWYwMmFmYTgxNWU0'

```

## Build and publish npm tarball to Nexus

base64 encode the PW
```
echo -n 'passwprd' | openssl base64
```

Set password in home/.npmrc
```
_auth=dGhyYW5lOlRScE5KRFlIaGNiUmZSTU0=
```

Now build and publish to Nexus
```
npm install
npm pack
npm publish --registry={npm-repo-url-in-nexus} {package-name}

```




