# Specify a base image
FROM node:alpine

WORKDIR '/app'

# Install some depenendencies
COPY package.json .
RUN yarn install
COPY . .

# Default command
CMD ["yarn", "run", "start"]