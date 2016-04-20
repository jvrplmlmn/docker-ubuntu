# Ubuntu Docker images

## Supported tags and respective Dockerfile links

- Ubuntu Trusty Tahr (14.04) [`trusty` (*trusty/Dockerfile*)](https://github.com/jvrplmlmn/docker-ubuntu/blob/master/trusty/Dockerfile)
- Ubuntu Xenial Xerus (16.04) [`xenial` (*trusty/Dockerfile*)](https://github.com/jvrplmlmn/docker-ubuntu/blob/master/xenial/Dockerfile)

## Build it

To create the image jvrplmlmn/ubuntu with one tag per Ubuntu release, execute the following commands:

```
docker build -t jvrplmlmn/ubuntu:trusty trusty/
docker build -t jvrplmlmn/ubuntu:xenial xenial/
```

## Pull it from DockerHub

```
docker pull jvrplmlmn/ubuntu:trusty
docker pull jvrplmlmn/ubuntu:xenial
```

## Run it

Use the following scripts:

```
./trusty/sshd.sh
./xenial/sshd.sh
```
