FROM node:12-alpine

WORKDIR /app

COPY . /app/

# Screw Gatsby
RUN apk add nasm
RUN apk add autoconf
RUN apk add automake
RUN apk add libtool
RUN apk add dpkg
RUN apk add pkgconfig
RUN apk add libpng
RUN apk add libpng-dev
RUN apk add g++

# Install all dependencies
RUN yarn install

# Run tests
RUN yarn test

# Copy the rest
COPY . /app
