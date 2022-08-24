FROM node:latest

WORKDIR /app

COPY ./package.json ./

RUN npm install --global http-server
RUN npm i

COPY ./ ./

CMD ["http-server", ".", "-p", "8080"]
