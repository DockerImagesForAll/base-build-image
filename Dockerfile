FROM --platform=linux/amd64 amazon/aws-cli

RUN yum update && yum upgrade -y

RUN yum install -y git wget curl tar libicu jq

RUN wget https://github.com/GitTools/GitVersion/releases/download/5.12.0/gitversion-linux-x64-5.12.0.tar.gz -O gitversion.tar.gz
RUN tar -xvf gitversion.tar.gz
RUN mv gitversion /usr/local/bin