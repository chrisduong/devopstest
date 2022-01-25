# Development

## How to build the Docker image

Build the Linux binary:

```sh
GOOS=linux GOARCH=amd64 go build -o outputs/web-server .
```

Build the Docker image

```sh
docker build -t=chrisduong/go-static-web-server .
```
