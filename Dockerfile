FROM alpine:latest

RUN apk update && apk add --no-cache \
  gdb \
  valgrind \
  ltrace \
  strace

RUN rm -rf /tmp/* /var/cache/apk/*

WORKDIR /root