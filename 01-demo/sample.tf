resource "aws_instance" "web" {
  ami           = "ami-0b7388157512d8c0f"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}