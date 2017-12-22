FROM alpine:3.7

RUN apk add --no-cache socat

CMD socat -d TCP4-LISTEN:2378,fork UNIX-CONNECT:/var/run/docker.sock
