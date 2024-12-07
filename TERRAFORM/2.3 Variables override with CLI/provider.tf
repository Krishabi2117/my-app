#terraform plan --var="ec2_instance_type=t3.large" --var="ec2_instance_count=1"
#terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = "var.aws_regions_mumbai"
  profile = "default"
}

