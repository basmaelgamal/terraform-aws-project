resource "aws_subnet" "public1" {
  vpc_id                          = aws_vpc.company.id
  cidr_block                      = var.public1_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone               = "${var.region}a"

  tags = {
    Name = "public1"
  }
}
resource "aws_subnet" "public2" {
  vpc_id                          = aws_vpc.company.id
  cidr_block                      = var.public2_subnet_cidr
  map_public_ip_on_launch  = true
  availability_zone               = "${var.region}b"

  tags = {
    Name = "public2"
  }
}
resource "aws_subnet" "private1" {
  vpc_id                          = aws_vpc.company.id
  cidr_block                      = var.private1_subnet_cidr
  availability_zone               = "${var.region}a"

  tags = {
    Name = "private1"
  }
}
resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.company.id
  cidr_block = var.private2_subnet_cidr
  availability_zone = "${var.region}b"

  tags = {
    Name = "private2"
  }
}