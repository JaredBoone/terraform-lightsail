# Terraform Lightsail

## Overview

Terraform scripts for spinning up a small Debian Bullseye instance with a static IP in AWS Lightsail.

## Usage

```
terraform init
terraform plan -var-file=./example.tfvars
terraform apply -var-file=./example.tfvars
```

## Key Pair

```
ssh-keygen -q -t rsa -b 2048 -N '' -f ~/.ssh/example && chmod 400 ~/.ssh/example
aws --region us-east-1 --profile default lightsail import-key-pair --key-pair-name example-key-pair --public-key-base64 file://~/.ssh/example.pub
```
