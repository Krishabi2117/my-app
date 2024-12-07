# Input Variables
variable "aws_regions_mumbai" {
  description = "Region in which AWS resources to be created"
  type        = string 
  default     = "ap=south-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string 
  default     = "ami-05afd67c4a44cc983"
}

variable "ec2_instance_count" {
  description = "EC2 instance Count"
  type        = number 
  default     = 3
}

# Assign when Prompted using CLI
variable "ec2_instance_count" {
  description = "EC2 instance Count"
  type        = string
  default     = "t2.micro"
}
