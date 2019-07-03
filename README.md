# DAT Project
The goal is to create two docker containers. The first one will run 'dat store run-service'. The second one will remotely configure the dat service running on the first server.
## Docker
### Create Image
#### Dockerfile
```
FROM node:8
RUN npm config set unsafe-perm=true && npm install -g dat dat-store
```
Encountered an issue installing dat-store due to os-service. To fixed the issue, use npm config set unsafe-perm=true
RUN : runs the commands on the container

To build a docker image from Dockerfile
```
docker build -t kit/dat:latest .
```
-t : tag the build image with "kit/dat:latest"
### Run Image
```
docker run -ti --rm -p 3472:3472 --name one -w="/root" -v $(pwd)/root:/root kit/dat:latest bash
```
-p : open port host:container
--name : name of container
-w : workdir inside container
-v : volume host:container

```
docker run -ti --rm --name two --link one kit/dat:latest bash
```
--link : creates a reference in the /etc/hosts of this container to the container named 'one'
