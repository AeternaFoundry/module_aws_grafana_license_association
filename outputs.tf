output "grafana_license_associations_id" {
  description = "Map of id values across all grafana_license_associations, keyed the same as var.grafana_license_associations"
  value       = { for k, v in aws_grafana_license_association.grafana_license_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "grafana_license_associations_free_trial_expiration" {
  description = "Map of free_trial_expiration values across all grafana_license_associations, keyed the same as var.grafana_license_associations"
  value       = { for k, v in aws_grafana_license_association.grafana_license_associations : k => v.free_trial_expiration if v.free_trial_expiration != null && length(v.free_trial_expiration) > 0 }
}
output "grafana_license_associations_grafana_token" {
  description = "Map of grafana_token values across all grafana_license_associations, keyed the same as var.grafana_license_associations"
  value       = { for k, v in aws_grafana_license_association.grafana_license_associations : k => v.grafana_token if v.grafana_token != null && length(v.grafana_token) > 0 }
}
output "grafana_license_associations_license_expiration" {
  description = "Map of license_expiration values across all grafana_license_associations, keyed the same as var.grafana_license_associations"
  value       = { for k, v in aws_grafana_license_association.grafana_license_associations : k => v.license_expiration if v.license_expiration != null && length(v.license_expiration) > 0 }
}
output "grafana_license_associations_license_type" {
  description = "Map of license_type values across all grafana_license_associations, keyed the same as var.grafana_license_associations"
  value       = { for k, v in aws_grafana_license_association.grafana_license_associations : k => v.license_type if v.license_type != null && length(v.license_type) > 0 }
}
output "grafana_license_associations_region" {
  description = "Map of region values across all grafana_license_associations, keyed the same as var.grafana_license_associations"
  value       = { for k, v in aws_grafana_license_association.grafana_license_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "grafana_license_associations_workspace_id" {
  description = "Map of workspace_id values across all grafana_license_associations, keyed the same as var.grafana_license_associations"
  value       = { for k, v in aws_grafana_license_association.grafana_license_associations : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

