
FROM node:14.14.0

WORKDIR /dev/api

COPY . .

CMD ["NODE_ENV=development", "npm", "run", "start"]
