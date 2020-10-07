FROM node:latest

RUN mkdir inventory
COPY package.json ./package.json
COPY lerna.json ./lerna.json
RUN npm i

COPY services/inventory ./services/inventory
RUN cd services/inventory
CMD node index.js