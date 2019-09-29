FROM nodered/node-red-docker

RUN npm install ttps://github.com/neodino/node-red-contrib-telstra-messaging-api.git

USER 0

COPY setpassword.js /setpassword.js

VOLUME /data
