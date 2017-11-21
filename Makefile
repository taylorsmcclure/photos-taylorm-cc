.PHONY: all image package dist clean

all: build

image:
	docker build --tag hugo:photos-taylorm-cc .

build: image
	docker run --rm --volume ${PWD}:/build:rw hugo:photos-taylorm-cc hugo

clean:
	docker rmi --force hugo:photos-taylorm-cc
