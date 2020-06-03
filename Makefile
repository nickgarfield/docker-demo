SHELL := /bin/bash

all: build run

build:
	docker build --build-arg port=$(port) -f Dockerfile -t sos/docker-demo .

run:
	docker run -p $(port):$(port) sos/docker-demo
