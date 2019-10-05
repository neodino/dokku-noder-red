FROM nodered/node-red:latest-10

ENV TZ Australia/Sydney

RUN npm i node-red-dashboard && npm i neodino/node-red-contrib-telstra-messaging-api  && npm i node-red-node-mongodb

USER 0

COPY setpassword.js /setpassword.js

VOLUME /data
