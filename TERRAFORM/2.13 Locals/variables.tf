# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string 
  default     = "ap=south-1"
}

#App Name S3 Bucket Used for
variable "app_name" {
  description = "Application Name"
  type = string 
  default = "zomato"
}

#Environment Name
variable "environment_name" {
  description = "Environment Name"
  type = string 
  default = "dev"
}

