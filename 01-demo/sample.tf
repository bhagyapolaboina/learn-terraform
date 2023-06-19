resource "aws_instance" "web" {
  ami           = "ami-ami-0fd0607dda462cbca"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}