FROM nodered/node-red-docker

RUN npm i node-red-dashboard && npm i neodino/node-red-contrib-telstra-messaging-api  && npm i node-red-node-mongodb

USER 0

COPY setpassword.js /setpassword.js

VOLUME /data
