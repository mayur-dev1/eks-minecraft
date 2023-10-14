# EKS-Minecraft
![Minecraft Logo](https://logos-world.net/wp-content/uploads/2020/05/Minecraft-Logo.png)
---

The purpose of this repository is to define a standalone, fully functioning and secure AWS EKS cluster that is able to
provision persistent Minecraft servers (Java & Bedrock) serially and in a scalable fashion.
> The intention of this initiative would benefit from the resources created here to be OSS thus enabling any organization
> to take part to deploy the functionality at their own discretion

## Technologies
The technical contents of this repository can be divided into three main sections
1. Kubernetes, provisioned using Terraform, running as a managed AWS EKS service. This provides the foundation and 
the orchestration needed to execute the compute resources and provide safe and secure connectivity to the public.
2. Helm is used to provision Kubernetes services which comprises the infrastructure `system` resources as well as
the servers themselves
3. The Minecraft server itself, which comes wrapped in a Docker image and declared using a Helm chart is based on an
OSS [project](https://docker-minecraft-server.readthedocs.io/en/latest/).

## Installation
The Terraform module declares a standalone EKS cluster as well as the necessary supporting infrastructure and VPC.
In order to provision the cluster execute the following command:
```shell
cd eks-minecraft
terraform plan -out plan
terraform apply "plan" 
```
