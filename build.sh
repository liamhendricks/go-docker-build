#!/bin/bash

echo "go build"
CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' .

echo "docker build"
docker build -t liamhendricks/go-docker-build-test .

echo "To start the service, run 'docker-compose run --rm gdbt go run main.go'"
