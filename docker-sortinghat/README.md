# Bitergia Analytics image for SortingHat

SortingHat is a tool to manage identities and is part of GrimoireLab
platform.

For more information about GrimoireLab and SortingHat, please visit
our [website](https://chaoss.github.io/grimoirelab/).


## How to use this image

### Quickstart 

These commands will start a SortingHat server container in developer mode
with a MySQL and Redis server containers. The service will run on an HTTP
server on `localhost:8000`. You can access it with credentials `admin:admin`.
Modify `SORTINGHAT_SUPERUSER_*` env vars, if you want different values.

```
$ docker network create sh

$ docker run --rm --net sh --name mysqldb -e 'MYSQL_ALLOW_EMPTY_PASSWORD=yes' mysql:8.0.22

$ docker run --rm --net sh --name redisdb redis:latest redis-server --appendonly yes

$ docker run --rm --net sh -p 8000:8000 --name sortinghat \
    -e 'SORTINGHAT_SECRET_KEY=secret' \
    -e 'SORTINGHAT_DB_HOST=mysqldb' \
    -e 'SORTINGHAT_REDIS_HOST=redisdb' \
    -e 'SORTINGHAT_SUPERUSER_USERNAME=admin' \
    -e 'SORTINGHAT_SUPERUSER_PASSWORD=admin' \
    -e 'SORTINGHAT_HTTP_DEV=0.0.0.0:8000' \
    bitergia/bitergia-analytics-sortinghat --dev
```

To run a worker that will execute jobs, use the next command:

```
$ docker run --rm --net sh --name sortinghat-worker-1 \
    -e 'SORTINGHAT_SECRET_KEY=secret' \
    -e 'SORTINGHAT_DB_HOST=mysqldb' \
    -e 'SORTINGHAT_REDIS_HOST=redisdb' \
    bitergia/bitergia-analytics-sortinghat-worker
```


## Building the image

To build the images (server and worker), run `docker build` command.

```
$ docker build -f server.dockerfile -t bitergia/bitergia-analytics-sortinghat .

$ docker build -f worker.dockerfile -t bitergia/bitergia-analytics-sortinghat-worker .
```


## License

SortingHat is licensed under GNU General Public License (GPL), version 3
or later.

However, this image is based on the [Debian docker image](https://hub.docker.com/_/debian),
Check their [license information](https://www.debian.org/social_contract#guidelines)
for the type of software is contained in this image.
