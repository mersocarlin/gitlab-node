FROM mhart/alpine-node

LABEL maintainer "mersocarlin@gmail.com"
LABEL Version "1.0"

RUN apk add --no-cache curl lftp

# Install yarn
RUN echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories
RUN apk add --no-cache yarn
