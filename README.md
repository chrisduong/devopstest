# devopstest

DevOps test website

## Task 1. CI/CD

### Infra setup

### 1. Create the EKS cluster

```sh
eksctl create cluster --region eu-central-1 \
  --instance-types t3.micro
```

### 2. Deploy the static Web Server
