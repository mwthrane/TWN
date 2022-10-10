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

### Going back in history

git checkout _commit HASH_. 

### Undoing commits

git reset --hard HEAD~2 to go back 2 commits.

To keep commits locally use soft instead of hard.

#### UNdo commit in remote repo

git reset --hard HEAD~2

git push --force

NEver do this in main/dev branch

#### To revert in main branche
git revert _commit hash_

really creates a new commit that does the opposit.

### Git merge







