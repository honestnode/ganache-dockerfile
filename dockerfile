FROM node:alpine
WORKDIR /app
RUN npm install ganache --global
ENTRYPOINT ["ganache"]
CMD ["-h", "0.0.0.0", "--fork.url", "wss://eth-mainnet.g.alchemy.com/v2/uMRugVHYQV8q85FHacBfiUC3JhzdJU0l"]
