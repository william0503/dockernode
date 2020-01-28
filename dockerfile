FROM node:alpine

COPY package*.json /app

WORKDIR /app/

RUN npm install

COPY . /app

ENTRYPOINT ["npm", "start"]

EXPOSE 3000

#docker build -t teste:latest -f dockerfile .
#docker run -p 3000:3000 --name container_teste teste:lastest
