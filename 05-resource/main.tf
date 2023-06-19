resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
data "aws_ami" "example" {
  ownersn= ["106797252878"]
  most_recent = true
  name_regex = "workstation"
}