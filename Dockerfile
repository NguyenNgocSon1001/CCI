FROM golang:1.7.4

ADD . /go/src/github.com/limmiehoang/demo-circleci

WORKDIR /go/src/github.com/limmiehoang/demo-circleci
RUN go install github.com/limmiehoang/demo-circleci/cmd/demo

COPY cmd/demo/demo.toml /etc/demo-circleci/demo.toml

CMD ["/go/bin/demo","-cfg","/etc/demo-circleci/demo.toml"]