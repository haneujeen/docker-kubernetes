# Specify a base image
FROM alpine

# Install dependaencies
RUN npm Install

# Default startup command
CMD ["npm", "start"]