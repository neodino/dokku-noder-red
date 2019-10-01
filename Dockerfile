FROM nodered/node-red-docker

RUN npm i node-red-dashboard && npm i neodino/node-red-contrib-telstra-messaging-api  && npm i node-red-node-mongodb && npm i node-red-contrib-mqtt-broker

USER 0

COPY setpassword.js /setpassword.js

VOLUME /data
