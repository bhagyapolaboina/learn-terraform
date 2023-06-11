     variable "class" {
       default = "devops"
     }
     ##print the san ein capital letters
     output "class" {
       value = upper(var.class)
     }
