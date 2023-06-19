module "sample1" {
  source = "./ec2"
  name = "sample1"
}
module "sample2" {
  source = "./ec2"
  name = "sample2"
}
output "pubic_ip_sample1" {
  value = module.sample1.pubilc_ip
}
output "pubic_ip_sample2" {
  value = module.sample2.pubilc_ip
}