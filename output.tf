output "instance_id" {
  value       = aws_instance.terraformE1.id
  description = "The ID of the EC2 instance"
}

output "instance_ip" {
  value       = aws_instance.terraformE1.public_ip
  description = "The public IP address of the EC2 instance"
}

output "public_ip" {
  value = aws_instance.terraformE1.private_ip
  description = "The private IP address of the EC2 instance"
}
