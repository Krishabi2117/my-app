# Input Variables
variable "aws_regions_mumbai" {
  description = "Region in which AWS resources to be created"
  type        = string 
  default     = "ap=south-1"
}


variable "instance_type" {
  description = "EC2 instance Type - Instance Sizing"
  type = string 
  default = "t2.micro"
}
