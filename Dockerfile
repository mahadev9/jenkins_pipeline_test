
FROM node:14.14.0

WORKDIR /usr/

COPY . .

EXPOSE 5010

CMD ["npm", "run", "start"]
