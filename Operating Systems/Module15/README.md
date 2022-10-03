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
