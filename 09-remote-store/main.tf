terraform {
  backend "s3" {
    bucket = "terraform-robo"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}
output "demo" {
  value = "hello world"
}