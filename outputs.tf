# these should all work assuming you do not change the id/names of resources.
output rds_name {
  value       = aws_db_instance.private_network_db.name
  sensitive   = false
  description = "rds name"
  depends_on  = [aws_db_instance.private_network_db]
}

output rds_address {
  value       = aws_db_instance.private_network_db.address
  sensitive   = false
  description = "rds address"
  depends_on  = [aws_db_instance.private_network_db]
}

output rds_port {
  value       = aws_db_instance.private_network_db.port
  sensitive   = false
  description = "rds port"
  depends_on  = [aws_db_instance.private_network_db]
}

output elb_dns_name {
  value       = aws_elb.web_elb.dns_name
  sensitive   = false
  description = "ELB dns name"
  depends_on  = [aws_elb.web_elb]
}

output ec2_int_ip0 {
  value       = aws_instance.web0.private_ip
  sensitive   = false
  description = "internal ip of web0"
  depends_on  = [aws_instance.web0]
}

output ec2_int_ip1 {
  value       = aws_instance.web1.private_ip
  sensitive   = false
  description = "internal ip of web1"
  depends_on  = [aws_instance.web1]
}
