variable "cidr" {
  type = string
}
variable "name" {
  type = string
}
variable "public1_subnet_cidr" {
  type = string
}
variable "public2_subnet_cidr" {
  type = string
}
variable "private1_subnet_cidr" {
  type = string
}
variable "private2_subnet_cidr" {
  type = string
}
variable "region" {
  type = string
}

variable "aim" {
  type = string
}
variable "instance_type" {
  type = string
}

variable "ingressrules" {
    type = list (number)
}

variable "public_key" {
  type = string
}
