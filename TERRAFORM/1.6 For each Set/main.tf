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
  region  = "us-east-1"
  profile = "default" 
}



# Create 4 IAM Users

resource "aws_iam_user" "myuser" {
  for_each = toset(["TJack", "TJames", "TMadhu", "TDave"])
  name     = each.key
}