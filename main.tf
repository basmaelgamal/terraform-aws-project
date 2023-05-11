module "company"{
source = "./network"

cidr = var.cidr
name = var.name
public1_subnet_cidr = var.public1_subnet_cidr
public2_subnet_cidr = var.public2_subnet_cidr
private1_subnet_cidr= var.private1_subnet_cidr
private2_subnet_cidr = var.private2_subnet_cidr
region = var.region

}