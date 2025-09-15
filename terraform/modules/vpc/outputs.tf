output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = [aws_subnet.public_a.id, aws_subnet.public_b.id]
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway attached to the VPC"
  value       = aws_internet_gateway.igw.id
}

output "public_route_table_id" {
  description = "The ID of the public route table associated with the public subnet"
  value       = aws_route_table.public.id
}
