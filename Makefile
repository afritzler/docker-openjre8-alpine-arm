all: java
push: push-java
.PHONY: push push-java java

TAG = 8

java:
	docker build -t afritzler/openjdk-alpine-arm .
	docker tag afritzler/openjdk-alpine-arm afritzler/openjdk-alpine-arm:$(TAG)

push-java: java
	docker push afritzler/openjdk-alpine-arm
	docker push afritzler/openjdk-alpine-arm:$(TAG)

clean:
	docker rmi afritzler/openjdk-alpine-arm:$(TAG) || :
	docker rmi afritzler/openjdk-alpine-arm || :
