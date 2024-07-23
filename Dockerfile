FROM node:22-alpine3.19

WORKDIR /app

COPY ..

RUN npm install

RUN npm run test

ENTRYPOINT [ "node" ]

CMD [ "app.js" ]

EXPOSE 8080
