resource "aws_vpc" "company" {
  cidr_block = var.cidr

  tags = {
    Name = var.name
  }
}