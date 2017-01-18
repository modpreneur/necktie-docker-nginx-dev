FROM modpreneur/necktie-nginx:0.2

MAINTAINER Martin Kolek <kolek@modpreneur.com>

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.5/main" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/v3.5/community" >> /etc/apk/repositories

ENV TERM xterm
RUN apk add --update \
    nano \
    nodejs \
    git \
    fish

RUN echo "modpreneur/necktie-nginx-dev:0.2" >> /home/versions