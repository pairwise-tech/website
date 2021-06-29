FROM node:12-alpine

WORKDIR /app

COPY . /app/

RUN apk add --no-cache autoconf

# Install all dependencies
RUN yarn install

# Run tests
RUN yarn test

# Copy the rest
COPY . /app
