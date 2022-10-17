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

## package Javascript app (nodeJS)

``` npm pack ```

# unpack the node-project file
tar zxvf bootcamp-node-project-1.0.0.tgz

# change into unpacked directory called "package"
cd package

# install dependencies
npm install

# run the application
node server.js


