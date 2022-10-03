## SSH

### SSH keypair (on remote server)
id.rsa.pub is the public key for the remote server.
.ssh/authorized_keys is the file where public keys are stored.
Copy public key from local computer to remote servers authorized_keys.

```
ls .ssh /
known_hosts

ssh-keygen -t rsa

ls .ssh/
id.rsa id.rsa.pub



```

