FROM node:lts-alpine 

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 9099 5001 8080 5000

CMD ["quasar", "build"]

