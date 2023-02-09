FROM golang:latest

ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64 \
    GOPROXY="https://goproxy.cn,direct"

RUN mkdir -p /opt/kbConf

COPY . /opt/kbConf

WORKDIR /opt/kbConf
RUN go build -o app .


ENTRYPOINT ["/opt/kbConf/app"]