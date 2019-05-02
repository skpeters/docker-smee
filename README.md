# docker-smee

https://smee.io/

## Build Locally

```bash
docker build -t hamzaahmad-io/smee .
```

## Run Locally

```bash
docker run -d --name smee -p 3000:3000 -e 'WEBHOOK_PROXY_URL=<smee_url>' --restart=unless-stopped hamzaahmad-io/smee:latest
```

or

    export WEBHOOK_PROXY_URL=""

    docker-compose up -d
