FROM node

WORKDIR /usr/src/app

RUN [ "git", "clone", "https://github.com/ColorlibHQ/AdminLTE/" ]

WORKDIR /usr/src/app/AdminLTE/

RUN [ "npm", "install" ]

EXPOSE 3000

ENTRYPOINT [ "npm", "run", "production" ]
