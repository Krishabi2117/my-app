# Create S3 Bucket - with Input Variables
/*
resource "aws_s3_bucket" "mys3bucket" {
  bucket = "${var.app_name}-${var.environment_name}-bucket"
  acl    = "private"
  tags = {
    Name = "${var.app_name}-${var.environment_name}-bucket"
    Environment = var.environment_name
  }
}
*/


/*
# Define Local Values
locals {
  bucket = "${var.app_name}-${var.environment_name}-bucket56" # Complex expression
  created_by = "giri"
  ec2-name="dev"
}

# Create S3 Bucket - with Input Variables & Local Values
resource "aws_s3_bucket" "mys3bucket" {
  bucket = local.bucket-name
  acl    = "private"
  tags = {
    Name = local.bucket-name
    Environment = var.environment_name
    created_by= local.created_by
  }
}

*/