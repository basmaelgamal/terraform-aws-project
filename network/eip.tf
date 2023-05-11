resource "aws_eip" "company" {
  
  tags = {
    Name = var.name
  }

}


# resource "aws_eip" "company2" {
#   tags = {
#    Name = "test"
#   }

#  provisioner "local-exec" {
#     command = "echo The servers IP address is ${self.public_ip}"
#   }

# }