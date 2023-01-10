
FROM node:14.14.0

WORKDIR /usr/

COPY . .

CMD ["npm", "run", "start"]
