FROM node:alpine
WORKDIR /app
RUN npm install ganache --global
EXPOSE 8545
ENTRYPOINT ["ganache"]
CMD ["-h", "0.0.0.0", "--fork.url", "wss://eth-mainnet.g.alchemy.com/v2/uMRugVHYQV8q85FHacBfiUC3JhzdJU0l"]
