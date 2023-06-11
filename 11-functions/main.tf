     variable "class" {
       default = "devops"
     }
     ##print the san ein capital letters
     output "class" {
       value = upper(var.class)
     }
     variable "fruits" {
       default = ["apple,banana,orange"]
     }
     output "fruit-count" {
       value = length(var.fruits)
     }
