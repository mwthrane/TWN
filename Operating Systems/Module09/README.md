## Linux accounts and Groups

Root - unrestricted permission
User - regular login with home folder
service account - runs service. Each service gets its own user to run the application eg. MySQL.
Do not run services with root user permission.

cat /etc/passwd
USERNAME:PASSWORD:UID:GID:GECOS:HOMEDIR:SHELL
eg.
peter:x:1000:1000:,,,:/home/thrane:/bin/bash


sudo usermod -aG newgroup


```bash

```
