output "ec2_security_group_id" {
  description = "The ID of the Security Group attached to the EC2 instance"
  value       = aws_security_group.ec2_sg.id
}

output "ec2_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.this.id
}

output "ec2_public_ip" {
  description = "The public IP of the created EC2 instance"
  value       = aws_instance.this.public_ip
}
