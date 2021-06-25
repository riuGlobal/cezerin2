FROM node:dubnium-buster
LABEL mainteiner='Ricardo David Ortiz'
WORKDIR /var/www/html/cezerin2
COPY package*.json ./
RUN npm install
COPY ./ ./
EXPOSE 3001 3000
CMD npm run setup \
&& npm run build \
&& npm run start-api\
&& npm run start-store\
