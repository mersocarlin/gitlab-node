FROM mhart/alpine-node

LABEL maintainer "mersocarlin@gmail.com"
LABEL Version "1.0.1"

RUN apk add --no-cache curl git ruby ruby-json && echo 'gem: --no-document' > /etc/gemr
RUN gem install dpl --no-document


# Install yarn
RUN echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories
RUN apk add --no-cache yarn
