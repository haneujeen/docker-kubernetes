# Specify a base image
# Base image with node.jd & npm installed:
FROM node:14-alpine

WORKDIR /usr/app

# Install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default startup command
CMD ["npm", "start"]