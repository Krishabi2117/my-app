
# Create security Group -SSH Traffic
resource "aws_security_group" "vpc-ssh1" {
  name        = "vpc-ssha"
  description = "DEV VPC SSH"
  ingress {
    description = "Allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all IP and Ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

# Create security Group -Web Traffic
resource "aws_security_group" "vpc-web2" {
  name        = "vpc-webb"
  description = "DEV VPC web"
  ingress {
    description = "Allow port 80"
    from_port   = 80  
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


