# scripts-and-solutions

1. Specify SSH key when pushing to GIT, on the fly:
```bash
GIT_SSH_COMMAND='ssh -i $HOME/.ssh/id_ed25519 -o IdentitiesOnly=yes -F /dev/null' git push
```

2. GIT reset branch to be like remote:
```bash
git fetch origin
git reset --hard origin/master
```

3. Kill application running on port:
```bash
lsof -ti:{PORT_NUMBER} | xargs kill -9 
```

4. MySQL SELECT result as JSON:
```sql
-- whole result as single JSON
SELECT JSON_ARRAYAGG(JSON_OBJECT('id', id, 'firstname', firstname, 'lastname', lastname)) from Person;
```
```sql
-- each row as JSON
SELECT JSON_OBJECT('id', id, 'firstname', firstname, 'lastname', lastname) from Person;
```
