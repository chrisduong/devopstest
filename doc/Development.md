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

Create the Fargate EKS cluster.

```sh
eksctl create cluster --region eu-central-1 \
  --fargate --instance-types t3.micro
  --name test-cluster #amazing-painting-1643191889
```

Get the current iamidentitymapping.

```sh
eksctl get iamidentitymapping --cluster amazing-unicorn-1643190291
```

Create `admin` user for the deployment.

```sh
eksctl create iamidentitymapping --cluster attractive-painting-1643104019 --arn arn:aws:iam::415376140508:user/tester --group system:masters --username admin
```
