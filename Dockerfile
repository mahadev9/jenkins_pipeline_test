
FROM mahadev9/docker_nvm

WORKDIR /usr/

COPY . .

EXPOSE 5016

RUN nvm use 14.14.0
# RUN npm install
# RUN npm run build

# CMD ["npm", "run", "start"]
