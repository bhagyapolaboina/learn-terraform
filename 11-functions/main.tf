variable "class" {
  default = "devops"
}
##print the same in capital letters
output "class" {
  value = var.class
}