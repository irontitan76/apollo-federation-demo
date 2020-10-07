FROM node:latest

RUN mkdir gateway
COPY package.json ./package.json
COPY lerna.json ./lerna.json
RUN npm i

COPY services/gateway ./services/gateway
RUN cd services/gateway
CMD node index.js