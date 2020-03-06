<h1 align="center">WordPress Docker Development</h1>

## Getting started (new project)

Clone the repo
```bash
$ git clone https://github.com/jaredchu/WordPress-Docker-Development.git project-name
$ cd project-name
$ rm -rf .git
```

Start docker
```bash
$ docker-compose up -d
```

Fix file/folder permission, only need on Linux
```bash
# bash wdd/permission.sh
```

You can now visit http://localhost to install new WordPress site and http://localhost:8080 to access PHPMyAdmin

## For existing project
There are not much different between new & existing project. You only need to copy `wdd` and `docker-compose.yml`
into your project and run `docker-compose up -d`.

## Usage
The current folder is mounted to container so you can do development things, install themes/plugins.

You can modify PHP configuration by update `wdd/uploads.ini` then restart docker:
```bash
$ docker-compose kill
$ docker-compose up -d
```

## The development credentials
```
MYSQL_ROOT_PASSWORD: password
MYSQL_DATABASE: wordpress
MYSQL_USER: wordpress
MYSQL_PASSWORD: wordpress
```
