#Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
  }
}

# Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket   = "test-terra-2806"
    key      = "dev/terraform.tfstate"
    region   = "ap-south-1"
    dynamodb_table = "mytable"
  }
}

# Provider Block
provider "aws" {
  region =  var.aws_regions
  profile = "default"
}

