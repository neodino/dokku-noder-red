FROM nodered/node-red-docker

RUN npm i node-red-dashboard && npm i https://github.com/neodino/node-red-contrib-telstra-messaging-api.git

USER 0

COPY setpassword.js /setpassword.js

VOLUME /data
