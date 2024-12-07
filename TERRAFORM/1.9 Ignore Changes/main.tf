terraform {
  required_providers = "~> 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}



# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami           = "ami-005e54dee72cc1d00" 
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-3"
  }
  lifecycle {
    ignore changes = [
     # Ignore changes to tags,e.g because a management agent
     # updates these based on some ruleset managed elsewhere.
     tags,
    ] 
  }
}