FROM mhart/alpine-node:8

LABEL maintainer "mersocarlin@gmail.com"
LABEL Version "1.0.2"

RUN apk add --no-cache curl git ruby ruby-json && echo 'gem: --no-document' > /etc/gemr
RUN gem install dpl --no-document
