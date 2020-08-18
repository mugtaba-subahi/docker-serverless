FROM node:12.18.3-alpine3.9

RUN apk update && \
  apk add python3 && \
  pip3 install awscli

USER node

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

WORKDIR /home/node/workspace

RUN npm install --global typescript@3.9.2 serverless@1.71.1
