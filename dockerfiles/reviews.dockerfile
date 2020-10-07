FROM node:latest

RUN mkdir reviews
COPY package.json ./package.json
COPY lerna.json ./lerna.json
RUN npm i

COPY services/reviews ./services/reviews
RUN cd services/reviews
CMD node index.js