# Specify a base image
# Base image with node.jd & npm installed:
FROM node:alpine

WORKDIR '/app'

# Install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default startup command
CMD ["npm", "start"]