FROM node:latest

RUN mkdir accounts
COPY package.json ./package.json
COPY lerna.json ./lerna.json
RUN npm i

COPY services/accounts ./services/accounts
RUN cd services/accounts
CMD node index.js