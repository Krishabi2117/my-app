# Warning : Never check sensitive values like usernames and password
# Create RDS MySql Database
resource "aws_db_instance" "dbl" {
  allocated storage   = 5
  engine              = "mysql"
  instance_class      = "db.t2.micro"
  name                = "mydbl"
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true 
}