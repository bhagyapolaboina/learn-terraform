data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.small"
  availability_zone = "us-east-1a"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}
output "price" {
  value = data.aws_ec2_spot_price.example.spot_price
}
  data "aws_ami" "example" {
    owners=[106797252878]
    most_recent = true
    name_regex = "workstation"
  }
output "ami" {
  value = data.aws_ami.example.id
}