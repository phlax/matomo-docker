#!/usr/bin/make -f

SHELL := /bin/bash


image:
	cd context && \
	  	 docker build -t phlax/matomo .

docker-push:
	docker push phlax/matomo
