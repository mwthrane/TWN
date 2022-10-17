## Linux file system

* Hierarchical tree struture
* 1 root folder

## Intro to CLIi

* ~ usr / # superuser

### Basic Linux commands

```
# Print working directory
pwd

# List
ls

# Create file
touch _fileName_

# Delete file
rm

# Delete directory
rm -r

# Go to root
cd /

# Rename folder
mv _originalName_ _newName_

# List directories and their contents
ls -R _folderName_

# List all commands from a session
history

# Search for commands ctrl-r from a session

# paste text - ctrl-shift-v

# Display OS info
uname -a
# OS release
cat /etc/os-release

# CPU info
lscpu
# memory info
lsmem

# exec commands as superuser
# Superuser cmds
ls /sbin

# swicth usr in cli
su - _userName_
```

## Package manager

```bash
sudo apt search openjdk

# add repository to APT
/etc/apt/sources.list
```

PPA - Used by developers. Personal repository

### Package managers
1. APT
2. snap
3. add repo


## VIM editor

* Press _i_ to instert
* Press _esc_ to escape dit mode
* Write _:wq_ to save file and quit VIM
* Write _:q!_ to quit VIM and discard changes
* Press _dd_ to delete entire line
* Press _d10d_ to delete 10 lines
* Press _u_ to undo changes
* Press _shift a_ to go to end of line and enter intern mode
* Press _0_ to go to start of a line
* Press _$_ to go to end of a line
* Press line number G to go to it like _12G_
* To search a file press _/_
* Replace string with a new string type _%s/old/new_

## Linux accounts and Groups

* Root - unrestricted permission
* User - regular login with home folder
* service account - runs service. Each service gets its own user to run the application eg. MySQL.
* Do not run services with root user permission.

``` cat /etc/passwd ```

USERNAME:PASSWORD:UID:GID:GECOS:HOMEDIR:SHELL

eg.

``` peter:x:1000:1000:,,,:/home/thrane:/bin/bash ```

``` sudo usermod -aG newgroup ```

## File ownership & permission

### linux filetype permission
![linux filetype permission](https://raw.githubusercontent.com/mwthrane/TWN/main/Operating%20Systems/Module10/linux%20permissions%20%20filetype1.png )

### linux owner permission
![linux owner permission](https://raw.githubusercontent.com/mwthrane/TWN/main/Operating%20Systems/Module10/linux%20permissions%201.png )

### linux group permission
![linux group permission](https://raw.githubusercontent.com/mwthrane/TWN/main/Operating%20Systems/Module10/linux%20permissions%203%20group.png )

### linux other permission
![linux other permission](https://raw.githubusercontent.com/mwthrane/TWN/main/Operating%20Systems/Module10/linux%20permissions%204%20other.png )

### Numeric mode
![Numeric mode](https://raw.githubusercontent.com/mwthrane/TWN/main/Operating%20Systems/Module10/5%20-%20numeric%20mode.png )

## Environment variables

To set permanent env per user set in .bashrc at the end of the file.
Then
``` source .bashrc ```

### ONLY avail in current session
```
#list all ENV
printevn

# Create own env
export ENV_NAME=value
#example
export DB_USERNAME=dbuser

#remove ENV
unset ENV_NAME
```

### Persistant env system wide
Set in /etc/environment

## Networking

* ifconfig
* netstat
* ps aux

## SSH

### SSH keypair (on remote server)
* id.rsa.pub is the public key for the remote server.
* .ssh/authorized_keys is the file where public keys are stored.
* Copy public key from local computer to remote servers authorized_keys.

```
ls .ssh /
known_hosts

ssh-keygen -t rsa

ls .ssh/
id.rsa id.rsa.pub



```
