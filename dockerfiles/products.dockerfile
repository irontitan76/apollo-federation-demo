FROM node:latest

RUN mkdir products
COPY package.json ./package.json
COPY lerna.json ./lerna.json
RUN npm i

COPY services/products ./services/products
RUN cd services/products
CMD node index.js