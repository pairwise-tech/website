FROM node:12-buster

WORKDIR /app

COPY . /app/

# Install all dependencies
RUN yarn install

# Run tests
RUN yarn test

# Copy the rest
COPY . /app
