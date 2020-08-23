FROM alpine:3.10
RUN apk update && apk add libbz2 build-base subversion icu-dev boost-dev graphviz-dev imagemagick-dev doxygen zlib-dev cmake git python2-dev bash boost-static
ADD https://github.com/moses-smt/mosesdecoder/archive/RELEASE-4.0.tar.gz /
WORKDIR mosesdecoder-RELEASE-4.0
RUN CFLAGS="-w" ./bjam -j2 link=static --static --prefix=/opt/moses/
