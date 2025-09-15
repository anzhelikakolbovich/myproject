variable "project_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "ec2_id" {
  description = "The ID of the EC2 instance to register in the target group"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the ALB will be placed"
  type        = list(string)
}
