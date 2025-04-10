# Custom n8n Docker Image

This is a custom Docker image including `curl` and `postgresql-client`.

See the [Docker Hub page](https://hub.docker.com/r/saltchang/custom-n8n) for the latest version.

## Quick Start

```bash
docker volume create n8n_data

docker run -it --rm \
  --name n8n \
  -p 5678:5678 \
  -v n8n_data:/home/node/.n8n-docker \
  saltchang/custom-n8n:1.87.2 \
  start --tunnel
```

## Development

### Build and Push

First, login to Docker Hub.

```bash
docker login
```

Then, build and push the image to Docker Hub.

```bash
docker buildx create --use

docker buildx build --platform linux/amd64,linux/arm64 \
  --build-arg TARGET_N8N_VERSION=1.87.2 \
  -t saltchang/custom-n8n:1.87.2 \
  -t saltchang/custom-n8n:latest \
  --push .
```

## References

- [n8n](https://n8n.io)
- [n8n GitHub](https://github.com/n8n-io/n8n)
- [n8n Docker Hub](https://hub.docker.com/r/n8nio/n8n)
