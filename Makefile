DOCKER_TAG := $(or ${DOCKER_TAG},${DOCKER_TAG},latest)

# you need to create/have a multi arch buildx builder, see https://docs.docker.com/desktop/multi-arch/
build:
	docker buildx build --platform linux/amd64,linux/arm64 -t enspirit/ruby:$(DOCKER_TAG) .

push: build
	docker buildx build --platform linux/amd64,linux/arm64 -t enspirit/ruby:$(DOCKER_TAG) --push .
