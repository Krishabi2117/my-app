terraform {
  required_providers = "~> 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}


# Provider Block
provider "aws" {
  version = "~> 5.0"
  region  = "us-east-1"
}


# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami           = "ami-005e54dee72cc1d00" 
  instance_type = "t2.micro"
  availability_zone = "ap-south-1b"
  #availability_zone = "ap-south-1a"
  tags = {
    "Name" = "web"
    "EVN" = "DEV-ALPHA-AL"
  }
}



# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami           = "ami-005e54dee72cc1d00" 
  instance_type = "t2.micro"
  availability_zone = "ap-south-1b"
  #availability_zone = "ap-south-1a"
  tags = {
    "Name" = "web"
    "EVN" = "DEV-ALPHA-AL"
  }
}




