FROM node:10.18.0-alpine3.11

LABEL maintainer "mersocarlin@gmail.com"
LABEL Version "10.18.0"

RUN apk update && apk upgrade \
	&& apk add --no-cache curl git ruby ruby-json && echo 'gem: --no-document' > /etc/gemr \
  && apk --no-cache add --virtual builds-deps build-base python \
	&& npm install -g node-gyp node-pre-gyp \
	&& npm rebuild bcrypt --build-from-source

RUN gem install dpl --no-document
