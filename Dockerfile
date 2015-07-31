FROM mikefaille/centos-base
MAINTAINER michael@faille.io <michael@faille.io>

ENV GO_VERSION 1.5beta3

RUN curl -s https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz | tar -xvz  -C  /usr/local

RUN mkdir /go
ENV GOPATH  /go
ENV GOROOT /usr/local/go
ENV PATH $PATH:/usr/local/go/bin:/go/bin
