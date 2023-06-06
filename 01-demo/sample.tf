resource "aws_instance" "web" {
  ami           = 'ami-0fc9e52ba2aedb00d'
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}