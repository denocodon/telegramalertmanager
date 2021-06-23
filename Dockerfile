FROM node:14-alpine3.13

ENV DEBUG="alerts:*" 
ENV TELECONFIG="telegram.yaml" 
 
RUN mkdir -p /alerts
COPY package.json *.yaml *.mjs /alerts/
WORKDIR /alerts
RUN npm install --unsafe-perm 
 
EXPOSE 13000 
CMD [ "node", "./alerts.mjs" ]