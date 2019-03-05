FROM node:11-slim

LABEL name="smee"
LABEL version="1.0"
LABEL description="Tunnel to local using smee: https://smee.io/"
LABEL maintainer="hamzaahmad-io"

ARG WEBHOOK_PROXY_URL
EXPOSE 3000

RUN npm install --global smee-client

ENTRYPOINT [ "bash", "-c", "smee", "-url", "${WEBHOOK_PROXY_URL}", "--path", "/github-webhook/", "--port", "8081" ]
