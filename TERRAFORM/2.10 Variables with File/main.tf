
# Create security Group -SSH Traffic
resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
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
resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
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


# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami           = "var.ec2_ami_id" 
  instance_type = "var.ec2_instance_type
  count = var.ec2_instance_count
  user_data = file("apache-install.sh")
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id]
  tags = {
    "Name" = "web"
  }  
}