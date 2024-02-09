# Install

```bash
npm install
```

# Macbook ARM Build
```bash
export DOCKER_BUILDKIT=1
docker buildx build --platform linux/amd64 -t denfle/cf-app:latest . --load

```

# Build on linux (No Arn)
docker build -t denfle/cf-app:latest .


# Push to Docker Hub Registry
docker push denfle/cf-app