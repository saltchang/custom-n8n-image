ARG TARGET_N8N_VERSION=latest

FROM n8nio/n8n:${TARGET_N8N_VERSION}

USER root

RUN apk add --no-cache \
      curl=8.13.0-r0 \
      postgresql17-client=17.4-r4


USER node
