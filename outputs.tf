output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "Public Subnet IDs"
  value       = aws_subnet.subnet-1.id
}

output "web_instance_ips" {
  description = "Web Instance IPs"
  value       = [for instance in aws_instance.web-instances : instance.private_ip]
}

output "internet_gateway" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.igw.id
}

output "route_table" {
  description = "Route Table ID"
  value       = aws_route_table.public_rt.id
}

output "nginx_id" {
  description = "Nginx Instance ID"
  value       = aws_instance.nginx_proxy.id
}

output "nginx_public_ip" {
  description = "Nginx Public IPcl"
  value       = aws_instance.nginx_proxy.public_ip
}