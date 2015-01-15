docker build --force-rm=true --rm=true -t iojs-deb .
docker run -i --rm -v `pwd`/export:/export -v `pwd`/build-iojs.sh:/tmp/build-iojs.sh -w /tmp -t iojs-deb:latest ./build-iojs.sh $1
