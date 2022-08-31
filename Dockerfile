FROM node:lts-alpine as builder

WORKDIR /app

COPY . .

RUN npm install && \
    npm i -g @quasar/cli && \
    npm i -g serve

RUN quasar build

EXPOSE 8080

CMD ["serve", "-s", "-l", "8080", "dist/spa"]