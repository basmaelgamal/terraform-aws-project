resource "aws_instance" "bastion" {
  ami                        = var.aim
  instance_type              = var.instance_type
  # vpc_security_group_ids     = [module.company.security_group_public]
  subnet_id                  = module.company.public1_id 
  key_name = "company"
  associate_public_ip_address = true

  tags   = {
    Name = "company-bastion"
    createdby = "terraform"
  }

root_block_device {
delete_on_termination = true

}
}

resource "aws_instance" "application" {
  ami                        = var.aim
  instance_type              = var.instance_type
  # security_groups     = [aws_security_group.jenkins_traffic.name]
  # vpc_security_group_ids = [aws_security_group.jenkins_traffic.id]
  subnet_id                  = module.company.private1_id

  key_name = "company"

  tags   = {
    Name = "company-aplication"
    createdby = "terraform"
  }

root_block_device {
delete_on_termination = true

}
}
