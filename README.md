This repo is an example of how to build a golang binary container with nothing
but the executable code and the SSL certs needed by go to resolve dependencies.
I added some example stuff into the Dockerfile and docker-compose.yml. Stuff
like adding ports or virtual hosts are just there as an example of ways you
could manage this as a real web service.

Why you might want to do something like this: 
The biggest reason is size. This container is a whopping 1.63MB of virtual
memory! If you built this same go script using alpine linux (the smallest nix
distro I know of) you'd be looking at an image over 100MB. Very significant
when using a technology like kubernetes to orchestrate docker containers.

To build everything:

chmod +x build.sh

./build.sh

docker-compose run --rm gdbt go run main.go
