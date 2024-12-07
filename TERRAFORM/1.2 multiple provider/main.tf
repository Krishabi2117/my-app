# Terraform Block
terraform {
  required_providers = "~> 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}


# Provider-1 for us-east-1  (Default Provider)
provider "aws" {
  region  = "us-east-1"
  profile = "default" 
}

# Provider for us-west-1  (Default Provider)
provider "aws" {
  region  = "us-west-1"
  alias = "my-west" 
  profile = "default"
}


# Resource Block to create VPC in us-east-1 which uses default provider
resource "aws_vpc" "vpc-us-east-1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "vpc-us-east-1"

 }
}

resource "aws_vpc" "vpc-us-west-1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "vpc-us-west-1"
  }
}