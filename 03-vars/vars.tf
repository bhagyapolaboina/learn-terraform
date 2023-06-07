#variable declaration
variable "sample" {
  default = 100
}
variable "sample1" {
  default = "hello world"
}
output "sample" {
  value = var.sample
}
output "sample1" {
  value = var.sample1
}
output "sample-ext" {
  value = "value of sample - ${var.sample}"
}
#variable data types
#1.string 2.number 3.boolean
#variable types
#in ansible 1.plain key, value 2.list 3.map/directory
#in terraform 1.plain 2.list 3.map


#plain
variable "course" {
  default = "devops training"
}
#list
variable "courses" {
  default = [
    "devops",
    "aws",
    "python"
  ]
}
#map
variable "course_details" {
  default = {
    devops={
      name= "devops"
      Timing= "10am"
      Duration= 90
    }
    AWS={
      name= "aws"
      Timing= "11am"
    }
  }
}
output "course" {
  value = var.course
}
output "courses" {
  value = var.courses
}
output "course_details" {
  value = var.course_details
}
variable "env" {}
  output "env" {
    value = var.env
  }

