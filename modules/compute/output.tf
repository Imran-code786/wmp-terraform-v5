output "private_ip" {
  value = aws_instance.instance.private_ip
}

output "publice_ip" {
  value = "aws_intance.instance.public_ip"
}