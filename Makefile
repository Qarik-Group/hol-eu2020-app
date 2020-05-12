DOCKERHUB ?= starkandwayne
IMAGE     ?= welcome-to-k8s
VERSION   ?= latest

default: build

build:
	docker build -t $(DOCKERHUB)/$(IMAGE):$(VERSION) .
push:
	docker push $(DOCKERHUB)/$(IMAGE):$(VERSION)
