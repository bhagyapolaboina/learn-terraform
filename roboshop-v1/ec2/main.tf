resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = var.name
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
      "ansible-pull -i localhost, -U https://github.com/bhagyapolaboina/roboshop-ansible.git main.yml -e env=dev -e role_name=${var.name}"
    ]
  }
}

data "aws_ami" "example" {
  owners=["106797252878"]
  most_recent = true
  name_regex = "workstation"
}

resource "aws_security_group" "sg" {
  name        = var.name
  description = "Allow TLS inbound traffic"


  ingress {
    description      = "SSH"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = var.name
  }
}
variable "name" {}
