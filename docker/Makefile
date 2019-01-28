D=1
IMAGE=portoleks/in5570v19:latest

.PHONY: interact start attach stop

interact:
	docker run \
	  --interactive --tty --rm \
	  --volume "$(shell pwd):/home/docker/src/" \
	  --workdir "/home/docker/src/" \
	  $(IMAGE)

start:
	docker run \
	  --tty -detach \
	  --expose=17000-19000 \
	  --volume "$$(pwd):/home/docker/src/" \
	  --workdir "/home/docker/src/" \
	  $(IMAGE) >> .instances

attach:
	docker exec \
	  --interactive --tty \
	  "$(shell cat .instances | tail -n $(D) | head -n 1)" \
	  bash

stop:
	if [ -f .instances ]; then \
	  docker stop $(shell cat .instances | tr '\n' ' '); \
	  rm .instances; \
	fi
