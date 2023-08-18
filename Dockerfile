# FROM node:20-alpine3.17
FROM node:18

WORKDIR /app

COPY *.json /app/
COPY *.html /app/
COPY *.ts /app/
COPY public /app/public/
COPY src /app/src/

RUN npm install
# RUN npm install -g server

EXPOSE 8081
# CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
CMD ["npm", "run", "dev"]