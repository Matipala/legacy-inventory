output "public_ip" {
  description = "IP Publica de la instancia EC2"
  value       = module.compute.instance_public_ip
}