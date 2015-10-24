# OpsDash Dockerfile

This is a Dockefile to easily setup the [OpsDash](https://www.opsdash.com)-Server with docker.

## Install & Setup

- Create an account on [OpsDash](https://www.opsdash.com).
- Login to OpsDash and download the current `.dep`-file for the server into the `dep`-directory (you can only download the file if you are logged in). At the time of writing this is `dep/opsdash-server_1.6_amd64.deb`.
- Change the config in `server.cfg` to your needs.

## Run with docker

Build the docker image:

```bash
docker build -t opsdash-server .
```

Run the container:

```bash
docker run -d -p 8080:8080 -p 6273:6273 -p 6273:6273/udp opsdash-server
```

## Run with docker-compose

```
docker-compose -p opsdash-server build
docker-compose -p opsdash-server up
```
