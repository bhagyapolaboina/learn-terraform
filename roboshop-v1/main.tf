module "instnaces" {
  for_each = var.instances
  source = "./ec2"
  name = each.key
}
variable "instances" {
  default = {
    fronted = {}
    mongodb = {}
    catalogue = {}
    cart = {}
    user = {}
    mysql = {}
    rabbitmq = {}
    payments = {}
    redis = {}
    shipping = {}
  }

}

