resource "tls_private_key" "pk" {
algorithm = "RSA"
rsa_bits  = 4096
}

resource "aws_key_pair" "deployer" {
key_name   = "company"
public_key = var.public_key

    provisioner "local-exec" {
    command = "echo ${tls_private_key.pk.private_key_pem} > ./company.pem"
    
}
}