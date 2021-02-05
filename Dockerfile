FROM node:lts
WORKDIR /app
ADD yarn.lock ./
ADD package*.json ./
RUN yarn --frozen-lockfile
RUN yarn -g pm2
ADD . .
CMD yarn serve

RUN set -x \
    && apk update \
    && apk add --no-cache bash git openssh \
    && git --version && bash --version && ssh -V && npm -v && node -v && yarn -v
