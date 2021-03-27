FROM node:alpine

ENV INPUT_CONFIG_FILE=''
ENV INPUT_CSS_FILE=''

RUN npm install -g gmi-web-cli@latest

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
