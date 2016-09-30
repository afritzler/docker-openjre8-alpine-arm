all: java
push: push-java
.PHONY: push push-java java

TAG = 8

java:
	docker build -t afritzler/openjre8-alpine-arm .
	docker tag afritzler/openjre8-alpine-arm afritzler/openjre8-alpine-arm:$(TAG)

push-java: java
	docker push afritzler/openjre8-alpine-arm
	docker push afritzler/openjre8-alpine-arm:$(TAG)

clean:
	docker rmi afritzler/openjre8-alpine-arm:$(TAG) || :
	docker rmi afritzler/openjre8-alpine-arm || :
