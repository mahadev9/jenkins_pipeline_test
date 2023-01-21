
FROM mahadev9/docker_nvm

WORKDIR /usr/

COPY . .

EXPOSE 5016

RUN /bin/bash -l -c nvm use 14.14.0
# RUN npm install
# RUN npm run build

ENTRYPOINT [ "/bin/bash" ]
# CMD ["npm", "run", "start"]
