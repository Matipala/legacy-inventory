module "network" {
  source   = "./modules/network"
  app_port = var.app_port
}

module "compute" {
  source        = "./modules/compute"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  sg_id         = module.network.security_group_id
  iam_profile   = var.iam_profile
}