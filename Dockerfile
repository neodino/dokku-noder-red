FROM nodered/node-red-docker

RUN npm install node-red-dashboard &&  npm install neodino/node-red-contrib-telstra-messaging-api

USER 0

COPY setpassword.js /setpassword.js

VOLUME /data
