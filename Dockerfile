FROM nodered/node-red-docker

RUN npm i node-red-dashboard && npm i neodino/node-red-contrib-telstra-messaging-api

USER 0

COPY setpassword.js /setpassword.js

VOLUME /data
