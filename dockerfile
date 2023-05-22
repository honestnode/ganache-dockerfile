FROM node:alpine
WORKDIR /app
RUN npm install ganache --global
EXPOSE 8545
