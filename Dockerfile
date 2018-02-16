FROM golang:alpine


ADD . /go/src/github.com/test-micro-gen
WORKDIR /go/src/github.com/test-micro-gen

RUN apk -U add make git bash wget curl gcc g++
RUN make
RUN apk del make git wget curl gcc g++

ENTRYPOINT ./scripts/start.sh
