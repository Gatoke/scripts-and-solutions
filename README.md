# scripts-and-solutions

1. Specify SSH key when pushing to GIT, on the fly:
```
GIT_SSH_COMMAND='ssh -i $HOME/.ssh/id_ed25519 -o IdentitiesOnly=yes -F /dev/null' git push
```

2. GIT reset branch to be like remote:
```
git fetch origin
git reset --hard origin/master
```

3. Kill application running on port:
```bash
lsof -ti:{PORT_NUMBER} | xargs kill -9 
```
