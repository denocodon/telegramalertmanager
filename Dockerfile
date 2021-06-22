FROM node:14

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get -y install curl python build-essential git ca
     -certificates

ENV DEBUG="alerts:*" 
ENV PORT="13000" 
ENV TELECONFIG="telegram.yaml" 
ENV REST_LISTEN="0.0.0.0" 
 
RUN mkdir -p /alerts
COPY package.json *.yaml *.mjs /alerts/
WORKDIR /alerts
RUN npm install --unsafe-perm 
 
EXPOSE 13000 
CMD [ "node", "./alerts.mjs" ]