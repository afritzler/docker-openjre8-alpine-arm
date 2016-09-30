# docker-openjdk8-alpine-arm

Alpine based image with OpenJDK preinstalled for all Java related work on a Raspberry Pi.

# Build
Build the docker image on a Raspberry Pi box with the following `make` targets

```
# build the image
make java

# push the image to docker hub (login first)
make push-java

# clean everything up
make clean
