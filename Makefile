IMAGENAME = mmd-local

build:
	docker build -t $(IMAGENAME) .

#remove:
#	docker rmi $(docker images -q -f dangling=true)

run:
	docker run --rm -ti $(IMAGENAME) sh
