# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string 
  default     = "ap=south-1"
}

variable "db_username" {
  description = "AWS RDS Database Administrator Username"
  type        = string 
  sensitive   = true
}

variable "db_password" {
  description = "AWS RDS Database Administrator Username"
  type        = string 
  sensitive   = true
}

