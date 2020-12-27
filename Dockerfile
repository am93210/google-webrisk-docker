FROM golang:1.15.6

RUN go get github.com/google/webrisk/cmd/wrserver

WORKDIR /go/bin

ENTRYPOINT ["wrserver", "-srvaddr", "0.0.0.0:80"]
