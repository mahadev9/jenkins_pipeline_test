
FROM mahadev9/docker_nvm

WORKDIR /usr/

COPY . .

EXPOSE 5016

RUN npm install
RUN npm run build

CMD ["npm", "run", "start"]
