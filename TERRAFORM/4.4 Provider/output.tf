terraform {
  required_providers = "~> 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}