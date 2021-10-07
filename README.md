
![](icon.png)

# Traveller Compose


## Quick Start

Install Docker Compose and Docker on your machine if you haven't already:  [Install Docker Compose](https://docs.docker.com/compose/install/)

Clone and cd into the traveller-compose folder
```bash
git clone https://github.com/kfields/traveller-compose
cd traveller-compose
```

Clone your fork into the web/traveller folder
```bash
git clone https://github.com/my-github-account/traveller web/traveller
```

:rocket: Blastoff!
```bash
docker-compose up
```

## Services

### Traveller

For more information about Traveller visit https://github.com/FlaskCon/traveller

:eye: http://localhost:5000/

### MySQL

https://hub.docker.com/_/mysql

### Adminer

https://hub.docker.com/_/adminer

:eye: http://localhost:8080/

    Username: traveller
    Password: traveller
    Database: traveller_dev

### Maildev

https://hub.docker.com/r/maildev/maildev

:eye: http://localhost:1080/
