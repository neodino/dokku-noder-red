FROM nodered/node-red-docker
RUN npm install node-red-dashboard && npm install node-red-node-mongodb && npm install node-red-contrib-mqtt-broker && npm install node-red-contrib-sms-telstra

USER 0

COPY setpassword.js /setpassword.js

VOLUME /data