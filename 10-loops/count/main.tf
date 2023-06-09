//resource "aws_instance" "web" {
 // count = 3
  //ami           = data.aws_ami.example.id
  //instance_type = "t3.micro"

  //tags = {
    //Name = "HelloWorld-${count.index}"
  //}
//}
resource "aws_instance" "web" {
  count = 3
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = var.instances[count.index]
  }
}
data "aws_ami" "example" {
  owners      = ["106797252878"]
  most_recent = true
  name_regex  = "workstation"
}
variable "instances" {
  default = ["fronted","catalogue","cart"]
}