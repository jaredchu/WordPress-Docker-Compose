<h1 align="center">WordPress Docker Development</h1>

## Getting started

Clone the project
```bash
$ git clone https://github.com/jaredchu/WordPress-Docker-Development.git project-name
$ cd project-name
$ rm -rf .git
```

Start docker
```bash
$ docker-compose up -d
```

Fix file/folder permission, only need on Ubuntu
```bash
# bash wdd/permission.sh
```

You can now visit http://localhost to install new WordPress site and http://localhost:8080 to access PHPMyAdmin

## Usage
The current folder is mounted to container so you can do development things, install themes/plugins.

## The development credentials
```
MYSQL_ROOT_PASSWORD: password
MYSQL_DATABASE: wordpress
MYSQL_USER: wordpress
MYSQL_PASSWORD: wordpress
```
