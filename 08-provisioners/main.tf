resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-007d52cb1e90e9bb3"]

  tags = {
    Name = "HelloWorld"
  }
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip
    }
    inline = [
      "sudo labauto ansible",

    ]
  }
}

data "aws_ami" "example" {
  owners=["106797252878"]
  most_recent = true
  name_regex = "workstation"
}