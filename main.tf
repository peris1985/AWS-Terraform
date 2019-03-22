provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profie}"
}

#Depoly Storage Module
module "storage" {
  source = "./storage"
  project_name = "${var.project_name}"
}
  
