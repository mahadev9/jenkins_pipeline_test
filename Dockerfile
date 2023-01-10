
FROM node:14.14.0

WORKDIR /usr/

COPY . .

EXPOSE 5016

RUN npm install
RUN npm run build

CMD ["npm", "run", "start"]
