DOCKER_TAG := $(or ${DOCKER_TAG},${DOCKER_TAG},latest)

build:
	docker build . -t enspirit/ruby:$(DOCKER_TAG)

push: build
	docker push enspirit/ruby:$(DOCKER_TAG)
