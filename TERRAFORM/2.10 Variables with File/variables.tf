# Input Variables
variable "aws_region" {
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
  default     = 1
}

variable "ec2_instance_tags" {
  description = "EC2 Instance Tags"
  type  = map(string)
  default  = {
    "Name"  = "ec2-web"
    "Tier"  = "Web"
  }
}

variable "ec2_instance_type_map" {
  description = "EC2 Instance Type"
  type  = map(string)
  default  = {
    "small-apps" = "t3.micro"
    "medium-apps" = "t3.medium"
    "big-apps" = "t3.large"
  }
}
