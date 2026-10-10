variable "grafana_license_associations" {
  description = <<EOT
Map of grafana_license_associations, attributes below
Required:
    - license_type
    - workspace_id
Optional:
    - grafana_token
    - region
EOT

  type = map(object({
    license_type  = string
    workspace_id  = string
    grafana_token = optional(string)
    region        = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.grafana_license_associations : (
        v.grafana_token == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.grafana_token)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

