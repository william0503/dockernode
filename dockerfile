FROM node:alpine

WORKDIR D:/Dev/Docker/app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]