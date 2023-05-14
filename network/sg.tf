resource "aws_security_group" "company_traffic" {
name        = "company_traffic"
description = "Allow jenkins inbound and  outbound  traffic"
vpc_id = aws_vpc.company.id

dynamic "ingress" {
    for_each    = var.ingressrules
    content {
        from_port   = ingress.value
        to_port     = ingress.value
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

tags = {
    Name = "company_SG"
}
}