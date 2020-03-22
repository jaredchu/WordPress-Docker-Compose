# WordPress Docker Development
Simple, fast and easy way to develop WordPress on localhost

## Getting started (new project)

```
git clone https://github.com/jaredchu/WordPress-Docker-Development.git [project_name]
cd [project_name]
docker-compose up -d
```

You can now visit http://localhost to install new WordPress site or http://localhost:8080 to access PHPMyAdmin.

## Existing project
There are not much different between new & existing project. You only need to copy `wdd` folder, `Dockerfile`, and `docker-compose.yml`
into your project and run `docker-compose up -d`.

## Usage
The current folder is mounted to container so you can do development things, install themes/plugins as normal.

PHP configuration can be modified by update `wdd/uploads.ini` then restart docker:
```bash
$ docker-compose down
$ docker-compose up -d
```
## Environment variables
```
MYSQL_ROOT_PASSWORD: password
MYSQL_DATABASE: wordpress
MYSQL_USER: wordpress
MYSQL_PASSWORD: wordpress
```
