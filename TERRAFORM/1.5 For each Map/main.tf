terraform {
  required_providers = "~> 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}


# Create 4 S3 Buckets
resource "aws_s3_bucket" "example" {

  # for_each Meta-Argument
  for_each = {
    dev  = "my-dapp-bucket-455"
    qa   = "my-qapp-bucket-455"
    stag = "my-sapp-bucket-455"
    prod = "my-papp-bucket-455"
  }

  bucket = "${each.key}-${each.value}"
  acl    = "private"


  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}