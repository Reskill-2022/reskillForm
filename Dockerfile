FROM node:lts-alpine 

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

EXPOSE 9099 5001 8080 5000

CMD ["quasar", "build"]

