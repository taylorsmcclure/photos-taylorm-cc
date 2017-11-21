FROM alpine:3.6

WORKDIR /build

RUN apk update && \
    apk add wget tar ca-certificates && \
    wget https://github.com/gohugoio/hugo/releases/download/v0.31/hugo_0.31_Linux-64bit.tar.gz && \
    tar xzf hugo_0.31_Linux-64bit.tar.gz && \
    mv /build/hugo /usr/local/bin && \
    rm -rf /build/hugo 
