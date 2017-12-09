.PHONY: all image deploy clean

all: build

image:
	docker build --tag hugo:photos-taylorm-cc .

build:
	docker run --rm --volume ${PWD}:/build:rw hugo:photos-taylorm-cc hugo

deploy:
	aws s3 sync --acl "public-read" --sse "AES256" public/ s3://photos.taylorm.cc 

clean:
	docker rmi --force hugo:photos-taylorm-cc
