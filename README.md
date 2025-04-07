# Custom n8n Docker Image

This is a custom Docker image including `curl` and `postgresql-client`.

See the [Docker Hub page](https://hub.docker.com/repository/docker/saltchang/custom-n8n/general) for the latest version.

## Build and Push

First, login to Docker Hub.

```bash
docker login
```

Then, build and push the image to Docker Hub.

```bash
docker buildx create --use
docker buildx build --platform linux/amd64,linux/arm64 -t saltchang/custom-n8n --push .
```

## References

- [n8n](https://n8n.io)
- [n8n GitHub](https://github.com/n8n-io/n8n)
- [n8n Docker Hub](https://hub.docker.com/r/n8nio/n8n)
