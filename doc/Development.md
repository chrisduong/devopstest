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

## EKS cluster

Get the current iamidentitymapping.

```sh
eksctl get iamidentitymapping --cluster attractive-painting-1643104019
```

Create `admin` user for the deployment.

```sh
eksctl create iamidentitymapping --cluster attractive-painting-1643104019 --arn arn:aws:iam::415376140508:user/tester --group system:masters --username admin
```
