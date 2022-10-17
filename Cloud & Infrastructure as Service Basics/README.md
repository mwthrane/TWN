## Cloud & Infrastructure as Service Basics

### What is IaaS

The infrastructure is managed somewhere else. eg Azure, Google.

### Server setup on Digital Ocean

* gigitalocean.com
* Servers are called Droplets

Connect to droplet using

``` ssh root@ip ```

Install java (for NExus)

``` apt install javaxxx ```

Copy the .jar file to droplet

``` scp path-to.jarfile root@ip:/path ```

Run the app

``` java -jar file.jar & ```

List servers with actice intenret connection

``` netstat -lpnt ```

### Create linux user

Give user sudo permission

``` usermod -aG sudo username ```

 


