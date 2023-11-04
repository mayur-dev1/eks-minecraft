# Making regions re-usable
variable "region" {
  description = "The AWS region for the default provider."
  type        = string
  default     = "eu-west-1"
}

variable "virginia_region" {
  description = "The region for the 'virginia' provider."
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "General name of the resources"
  type        = string
  default     = "ex-eks-minecraft"
}

variable "cluster_version" {
  description = "Version of the eks cluster"
  type        = string
  default     = "1.28"
}

variable "vpc_cidr" {
  description = "CIDR value of the VPC"
  type        = string
  default     = "10.0.0.0/16"
}