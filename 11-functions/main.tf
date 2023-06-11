     variable "class" {
       default = "devops"
     }
     ##print the same in capital letters
     output "class" {
       value = upper(var.class)
     }
     variable "fruits" {
       default = ["grape", "pepsi", "happy"]
     }
     output "fruits_count" {
       value = length(var.fruits)
     }

