FROM node:12.18.3-alpine3.9

RUN apk update && \
  apk add bash && \
  apk add py3-pip && \
  pip3 install awscli

RUN npm install --global typescript@3.9.2 serverless@1.71.1
