output "ec2_instance_ip_address" {
  description = "The public IP address assigned to the instance"
  value       = module.ec2_instance.public_ip
}

output "ec2-instance_instance_state" {
  description = "The state of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`"
  value       = module.ec2_instance.instance_state
}
