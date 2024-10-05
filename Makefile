.DEFAULT_GOAL := build

.PHONY: build

build:
	docker build --pull -t 2cheetah/golang-custom:1-bookworm .
