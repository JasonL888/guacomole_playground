

# Guacamole Playground
## Description
Docker compose environment to test out guacamole


## Usage
### Start up containers
```
docker compose up -d
```
### DB initialization
> one-time only
> * script 
>   * generates the init DB SQL from the guacamole container
>   * copies over to guac-db container 
>   * executes the init DB SQL to create the tables
```
./init.sh
```

### Access
* browse to site
  * login with default `guacadmin/guacadmin`
```
http://localhost:8080/guacamole
```

## License