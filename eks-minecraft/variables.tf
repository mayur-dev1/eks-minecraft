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


