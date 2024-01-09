output "zone_id" {
  value       = try(data.aws_route53_zone.this.0.zone_id, aws_route53_zone.this.0.zone_id)
  sensitive   = false
  description = "description"

}
