### Setting up gradle to push to Nexus

In build.gradle

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
