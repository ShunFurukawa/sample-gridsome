FROM node:14.12.0-alpine3.12

WORKDIR /var/www/html/sample-gridsome

RUN apk update && \
    apk upgrade && \
    apk add --no-cache git \
    shadow \
    gcc \
    musl-dev \
    autoconf \
    automake \
    make \
    libtool \
    nasm \
    tiff \
    jpeg \
    zlib \
    zlib-dev \
    file \
    pkgconf

RUN npm i -g @gridsome/cli

COPY package.json yarn.lock ./

RUN npm i

COPY . .

CMD ['gridsome', 'build']
