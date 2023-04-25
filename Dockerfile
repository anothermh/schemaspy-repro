FROM node:18.15-alpine

WORKDIR /schemaspy-repro
COPY . .
RUN corepack enable && corepack prepare yarn@stable --activate && yarn install

ENTRYPOINT ["yarn"]
