.DEFAULT_GOAL := build

.PHONY: build

build:
	docker build -t 2cheetah/golang-custom:1.22-bookworm .
