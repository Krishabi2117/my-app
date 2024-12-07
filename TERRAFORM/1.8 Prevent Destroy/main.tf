terraform {
  required_providers = "~> 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}




# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami           = "ami-005e54dee72cc1d00" 
  instance_type = "t2.micro"
  availability_zone = "ap-south-1b"
  tags = {
    "Name" = "web-1"
    "EVN" = "DEV-ALPHA-AL"
  }
  lifecycle {
    prevent_before_destroy = false
  }
}