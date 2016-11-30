FROM node:alpine

MAINTAINER gouvinb

LABEL "com.gouvinb.docker-markdownlint"="gouvinb" \
      version="1.0" \
      description="A Docker image for markdownlint-cli, command Line Interface for MarkdownLint (node js)."

RUN apk update && \
    npm install -g markdownlint-cli && \
    mkdir /data

WORKDIR /data

ENTRYPOINT ["markdownlint"]
CMD ["--help"]