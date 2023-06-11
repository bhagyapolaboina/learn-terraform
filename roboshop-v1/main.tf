module "instnaces" {
  for_each = var.instances
  source = "./ec2"
  name = each.key
}

