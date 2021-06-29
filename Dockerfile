FROM node12

WORKDIR /app

# Install all dependencies
RUN yarn install

# Run tests
RUN yarn test

# Copy the rest
COPY . /app
