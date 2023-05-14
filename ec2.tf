resource "aws_instance" "bastion" {
  ami                        = var.aim
  instance_type              = var.instance_type
  # key_name = "company"
  vpc_security_group_ids = [module.company.aws_security_group]
  subnet_id                  = module.company.public1_id 

  associate_public_ip_address = true

  tags   = {
    Name = "company-bastion"
    createdby = "terraform"
  }

root_block_device {
delete_on_termination = true

}

# provisioner "remote-exec" {
#     inline = [
#         "sudo yum update –y",
#         "sudo yum  -y  install wget",
#         "sudo wget -O /etc/yum.repos.d/jenkins.repo  https://pkg.jenkins.io/redhat-stable/jenkins.repo",
#         "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key",
#         "sudo yum upgrade -y",
#         "sudo yum install java-11-amazon-corretto -y",
#         "sudo yum install jenkins -y",
#         "sudo systemctl enable jenkins",
#         "sudo systemctl start jenkins",
#     ]



# }

# connection {
#     type     = "ssh"
#     user     = "ec2-user"
#     private_key= "${file("./key/company.pem")}"
#     host     = self.public_ip
# }

}

resource "aws_instance" "application" {
  ami                        = var.aim
  instance_type              = var.instance_type
  vpc_security_group_ids = [module.company.aws_security_group]
  subnet_id                  = module.company.private1_id

  # key_name = "company"

  tags   = {
    Name = "company-aplication"
    createdby = "terraform"
  }

root_block_device {
delete_on_termination = true

}


# provisioner "remote-exec" {
#     inline = [
#         "sudo yum update –y",
#         "sudo yum  -y  install wget",
#         "sudo wget -O /etc/yum.repos.d/jenkins.repo  https://pkg.jenkins.io/redhat-stable/jenkins.repo",
#         "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key",
#         "sudo yum upgrade -y",
#         "sudo yum install java-11-amazon-corretto -y",
#         "sudo yum install jenkins -y",
#         "sudo systemctl enable jenkins",
#         "sudo systemctl start jenkins",
#     ]

# connection {
#     type     = "ssh"
#     user     = "ec2-user"
#     private_key= "${file("./key/company.pem")}"
#     host     = self.public_ip
# }

# }

}






