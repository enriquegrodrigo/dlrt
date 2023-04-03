# Makefile to simplify repetitive tasks

# Leave these variables to the release version
# (using the latest tag for the master branch)
DOCKER_TAG=latest
SOURCE_BRANCH=master

build:
	docker build --build-arg SOURCE_COMMIT=$(SOURCE_BRANCH) \
				 -t enriquegrodrigo/lrotree:$(DOCKER_TAG) .

pull:
	docker pull enriquegrodrigo/lrotree:$(DOCKER_TAG)

bash:
	docker run -it \
			   -v $(PWD)/:/home/scikit-lr/workspace/ \
			   --rm enriquegrodrigo/lrotree:$(DOCKER_TAG) \
			   /bin/bash

notebook:
	docker run -it \
			   -p 8888:8888 \
			   -v $(PWD)/:/home/scikit-lr/workspace/ \
			   --rm enriquegrodrigo/lrotree:$(DOCKER_TAG) \
			   jupyter lab --ip=0.0.0.0
