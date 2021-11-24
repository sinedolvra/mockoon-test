FROM node:14-alpine

ARG version=latest

RUN npm install -g @mockoon/cli@$version
COPY data.json /usr/src/
COPY entrypoint.sh /

RUN adduser --shell /bin/sh --disabled-password --gecos "" mockoon
RUN chown -R mockoon entrypoint.sh
USER mockoon

ENTRYPOINT ["sh", "entrypoint.sh"]