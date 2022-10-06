## Setup git repo

1. Connect the client to github
2. Copy the public rsa key to github
3. now clone the repo


### Creating a new branch
git checkout -b _branchname_

Now the files can be adjusted / updated

git add .

git commit -m "Message"

git push --set-upstream origin feature/branch-test

### Avoiding merge conflicts - git pull vs. git pull --rebase

To rebase a pull do
``` git pull -r ```

This is effective to avoid unnessesary commits.

### Resolving merge conflicts

When conflicts have been manually merged, continue with

``` git rebase --continue ```

### Git ignore

Git ignore file is .gitignore

To remove files already in repo before being ignore ``` git rm -r --cached _folder_ ```

then commit and push

### git stash 

For changes that you don't want comitted yet.





