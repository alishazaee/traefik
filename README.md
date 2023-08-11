## Generate Treafik pass
```
echo $(htpasswd -nb user password) | sed -e s/\\$/\\$\\$/g
```
