provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profie}"
}

##Depoly Storage Module
module "storage" {
  source = "./storage"
  project_name = "${var.project_name}"
}

#Deploy Networking Module
module "Networking" {
  source = "./networking"
  vpc_cidr = "${var.vpc_cidr}"
}
