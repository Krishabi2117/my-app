terraform {
  required_providers = "~> 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}




# Resource-1: Create VPC
resource "aws_vpc" "vpc-dev" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    "Name" = "vpc-dev"
  }
}


# Resource-2: Create IGW
resource "aws_internet_gateway" "vpc-dev-igw" {
  vpc_id = aws_vpc.vpc-dev.id
  depends_on = [aws_vpc.vpc-dev]
}


# Resource-3: Create Elastic IP
resource "aws_eip" "my_eip" {
  vpc = true
  # Meta-Argument
  depends_on = [aws_internet_gateway.vpc-dev-igw]
}