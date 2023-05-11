resource "aws_nat_gateway" "company" {
  allocation_id = aws_eip.company.id
  subnet_id     = aws_subnet.public1.id

}