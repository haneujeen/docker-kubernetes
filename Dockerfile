# Specify a base image
# Base image with node.jd & npm installed:
FROM node:14-alpine

WORKDIR /usr/app

# Install dependencies
COPY ./ ./
RUN npm install

# Default startup command
CMD ["npm", "start"]