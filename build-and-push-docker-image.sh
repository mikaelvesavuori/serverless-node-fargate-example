aws ecr get-login --no-include-email --region {REGION} | /bin/bash
cd docker-node-basic-webserver/src
npm install
cd ..
docker build -t {PROJECT_NAME} .
docker tag {PROJECT_NAME}:latest {ACCOUNT_NUMBER}.dkr.ecr.{REGION}.amazonaws.com/{PROJECT_NAME}:latest
docker push {ACCOUNT_NUMBER}.dkr.ecr.{REGION}.amazonaws.com/{PROJECT_NAME}:latest
