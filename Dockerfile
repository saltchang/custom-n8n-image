ARG TARGET_N8N_VERSION=latest

FROM n8nio/n8n:${TARGET_N8N_VERSION}

USER root

RUN apk add --no-cache \
      curl \
      postgresql-client


USER node
