# Static Site Container

This repository offers files to provide static web page content in a container.

Image size is ~ 21mb, resource consumption is ~ 5mb RAM

## Build it

All content that is to be made available must be packed in the `content` folder in this repository.

To build a Docker image from the Dockerfile, run the following command from inside this directory

```
$ docker build -t <username>/mycontent:latest .
```

This will result in the following output

```
Sending build context to Docker daemon  54.78kB
Step 1/4 : FROM nginx:alpine
Step 2/4 : LABEL title="Tiny Dockerized nginx server for static web content"   maintainer="Christian Bargmann"   version="1.0"   url1="https://chris@cbrgm.net"   url2="http://github.com/cbrgm/StaticSiteContainer"
 ---> Running in 29ed6e4276a5
Removing intermediate container 29ed6e4276a5
 ---> fe9379b77be7
Step 3/4 : COPY default.conf /etc/nginx/conf.d/default.conf
 ---> 58fd737ea8fc
Step 4/4 : COPY content/* /usr/share/nginx/html
 ---> 66a8751dac1c
Successfully built 66a8751dac1c
Successfully tagged <username>/mycontent:latest
```

## Run it

To run container, use the following command

```
$ docker run -itd --name mysite --p 8080:80 <username>/mycontent:latest
```

Visit `http://localhost:8080` to access your static website files.
