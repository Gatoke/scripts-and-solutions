# scripts-and-solutions

1. Specify SSH key when pushing to GIT, on the fly:
```
GIT_SSH_COMMAND='ssh -i $HOME/.ssh/id_ed25519 -o IdentitiesOnly=yes -F /dev/null' git push
```
