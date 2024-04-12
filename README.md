## grafana dashboard for nginx exporter
![Screenshot from 2024-04-11 18-14-06](https://github.com/alishazaee/traefik/assets/53411387/3407e7b9-33f8-48ac-8c56-2aa044696c4f)

## grafana dashboard for fluentd 
![Screenshot from 2024-04-11 18-14-06](https://github.com/alishazaee/traefik/assets/53411387/2532ef55-6e84-4092-8643-438765cadf9b)

### Generate Treafik pass
```
echo $(htpasswd -nb user password) | sed -e s/\\$/\\$\\$/g
```
