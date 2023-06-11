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
     variable "classes" {
       default = {
         devops = {
           name = "devops"
           topics = ["jenkins", "docker"]
         }
         aws = {
           name = "aws"
         }
       }
     }
     output "devops_topics" {
       value = var.classes["devops"]["topics"]
     }
     //output "aws_topics" {
       //value = lookup(var.classes,"aws","null")
    // }
     output "fruit_4" {
       value = element(var.fruits,4)
     }
     variable "a" {
       default = 100
     }
     output "a" {
       value = var.a > 100 ? "surplus quantity" : "less quantity"
     }

