# terraform plan -var-file="dev.tfvars"
# terraform plan -var-file="prod.tfvars"

#Terraform Block
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
  region = "var.aws_region
  profile = "default"
}
