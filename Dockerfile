# React application build
FROM node:16-alpine as builder

WORKDIR '/app'

COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Nginx set up
FROM nginx

COPY --from=builder /app/build /usr/share/nginx/html
