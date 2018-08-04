FROM node:10-alpine

LABEL maintainer "mersocarlin@gmail.com"
LABEL Version "1.0.4"

RUN apk update && apk upgrade \
	&& apk add --no-cache curl git ruby ruby-json && echo 'gem: --no-document' > /etc/gemr \
  && apk --no-cache add --virtual builds-deps build-base python \
	&& npm install -g node-gyp node-pre-gyp \
	&& npm rebuild bcrypt --build-from-source

RUN gem install dpl --no-document
