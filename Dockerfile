FROM nodered/node-red-docker
RUN npm install node-red-dashboard && npm install node-red-node-mongodb && npm install node-red-contrib-mqtt-broker

ADD ./data /data

VOLUME /data