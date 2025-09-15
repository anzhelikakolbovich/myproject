module "vpc" {
  source       = "../modules/vpc"
  project_name = var.project_name
}

module "ec2" {
  source       = "../modules/ec2"
  project_name = var.project_name
  subnet_id    = module.vpc.public_subnet_ids[0]          
  vpc_id       = module.vpc.vpc_id  
  key_name = "anzhelikakey"               
}

module "alb" {
  source       = "../modules/alb"
  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnet_ids
  ec2_id       = module.ec2.ec2_id   
}

module "ecr" {
  source       = "../modules/ecr"
  project_name = var.project_name
}
