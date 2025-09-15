variable "project_name" {
  description = "The name of the project used in resource naming"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EC2 and its security group will be created"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key pair in AWS"
  type        = string
}
