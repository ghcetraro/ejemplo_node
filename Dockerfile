FROM node:14.16-alpine

RUN apk update
WORKDIR /usr/app/
COPY package*.json ./

RUN npm install

COPY app ./

RUN npm prune --production

EXPOSE 8080

CMD [ "npm" , "start" ]