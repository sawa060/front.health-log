FROM node:14.4.0-alpine

ENV LANG=C.UTF-8 \
  TZ=Asia/Tokyo

WORKDIR /app

RUN apk update && \
    npm install -g create-nuxt-app

RUN apk update && apk add \
  python\
  make\
  g++


ENV HOST 0.0.0.0
EXPOSE 8080
