# Terraform Lightsail

## Overview

Terraform scripts for spinning up a small Debian Bullseye instance with a static IP in AWS Lightsail.

## Usage

```
terraform init
terraform plan -var-file=./example.tfvars
terraform apply -var-file=./example.tfvars
```
