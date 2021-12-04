FROM node:17-alpine

WORKDIR /usr/app

RUN \
  npm install madr && \
  npm install -g adr-log

VOLUME ["/src"]
WORKDIR /src

LABEL \
  exposed.command.multiple.madr-init="sh -c \"mkdir -p docs/decisions && cp /usr/app/node_modules/madr/template/* docs/decisions\"" \
  exposed.command.multiple.adr-log="adr-log"
