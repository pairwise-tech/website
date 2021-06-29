FROM node:12-alpine

WORKDIR /app

COPY . /app/

# Get Ubuntu packages
RUN apk update
RUN apk upgrade

# Install all dependencies
RUN yarn install

# Run tests
RUN yarn test

# Copy the rest
COPY . /app
