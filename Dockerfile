FROM mhart/alpine-node

LABEL maintainer "mersocarlin@gmail.com"
LABEL Version "1.0"

RUN apk add --no-cache curl lftp