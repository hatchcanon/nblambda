# nblambda

## Introduction
This is the repo for an example API Gateway and Lambda in a private VPC coded via Terraform. A diagram of the architecture is provided.

## Architectural Diagram
![Diagram](https://github.com/hatchcanon/nblambda/raw/master/lambda%20diagram.drawio.png)

## Components
Terraform is structured in 2 main folders
* Infrastructure
* Modules

This insures that the code is modular and is easily readable. This also makes it easy to update in case you need to.

Inside the modules you have 3 services
* API Gateway
* Lambda
* VPC

These modules all utilize Terraform AWS modules https://registry.terraform.io/namespaces/terraform-aws-modules
* Created using Terraform v1.3.7
* Lambda Module v4.9.0
* APIGW Module v2.2.2
* VPC Module v3.19.0