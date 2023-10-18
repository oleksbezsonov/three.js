FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -g npm@latest
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "dev" ]