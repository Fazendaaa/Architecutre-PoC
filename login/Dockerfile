FROM node

WORKDIR /usr/src/app

COPY public/ .
COPY package.json .

EXPOSE 80

RUN [ "npm", "install" ]
ENTRYPOINT [ "npm", "start" ]
