resource "aws_instance" "web" {
  for_each = var.instances
  ami           = data.aws_ami.example.id
  instance_type = lookup(each.value,"instance_type","t3.small"

  tags = {
    Name = each.key
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

    }
    cart = {
      name = "cart"
      instance_type = "t3.micro"
    }

  }
}