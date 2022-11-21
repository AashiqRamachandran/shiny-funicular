aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 259881173586.dkr.ecr.us-east-1.amazonaws.com

docker build -t subfinder .

docker tag subfinder:latest 259881173586.dkr.ecr.us-east-1.amazonaws.com/subfinder:latest

docker push 259881173586.dkr.ecr.us-east-1.amazonaws.com/subfinder:latest

```shell
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 259881173586.dkr.ecr.us-east-1.amazonaws.com;docker build -t subfinder .;docker tag subfinder:latest 259881173586.dkr.ecr.us-east-1.amazonaws.com/subfinder:latest;docker push 259881173586.dkr.ecr.us-east-1.amazonaws.com/subfinder:latest
```