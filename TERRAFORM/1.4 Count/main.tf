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
resource "aws_instance" "web" {
  ami           = "ami-005e54dee72cc1d00" 
  instance_type = "t2.micro"
  count         = 5 (0,1,2,3,4)
  tags = {
    #"Name" = "web"
    "Name" = "web-${count.index}"
  }
}