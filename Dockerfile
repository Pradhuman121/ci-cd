FROM node:alpine3.21

WORKDIR /app

COPY package.json .

RUN npm install

RUN npm update

COPY . .

EXPOSE 3000

CMD ["npm","start"]