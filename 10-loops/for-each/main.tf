resource "aws_instance" "web" {
  count = 3
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = "hello"
  }
}
data "aws_ami" "example" {
  owners      = ["106797252878"]
  most_recent = true
  name_regex  = "workstation"
}
variable "instances" {
  default = {
    fronted = {
      name = "fronted"
      instance_type = "t3.micro"
    }
    catalogue = {
      name = "catalogue"
      instance_type = "t3.micro"
    }
    cart = {
      name = "cart"
      instance_type = "t3.micro"
    }

  }
}