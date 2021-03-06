FROM node:dubnium-buster
LABEL mainteiner='Ricardo David Ortiz'
WORKDIR /var/www/html/cezerin2
COPY package*.json ./
RUN npm install
COPY ./ ./
EXPOSE 3001
CMD npm run setup && npm run start-api
