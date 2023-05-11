
output "nat_ip" {
  value = module.company.nat_ip
}

# output "security_group_public" {
#   value = aws_security_group.public.id
# }

# output "security_group_private" {
#   value = module.company.security_group_private
# }

output "public1_id" {
  value = module.company.public1_id
}
output "public2_id" {
  value = module.company.public2_id
}

# output "private1_id" {
#   value = module.company.private1.id
# }
# output "private2_id" {
#   value = module.company.private2.id
# }