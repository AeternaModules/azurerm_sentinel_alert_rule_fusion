variable "sentinel_alert_rule_fusions" {
  description = <<EOT
Map of sentinel_alert_rule_fusions, attributes below
Required:
    - alert_rule_template_guid
    - log_analytics_workspace_id
Optional:
    - enabled
    - name
    - source (block):
        - enabled (optional)
        - name (required)
        - sub_type (optional, block):
            - enabled (optional)
            - name (required)
            - severities_allowed (required)
EOT

  type = map(object({
    alert_rule_template_guid   = string
    log_analytics_workspace_id = string
    enabled                    = optional(bool)
    name                       = optional(string)
    source = optional(list(object({
      enabled = optional(bool)
      name    = string
      sub_type = optional(list(object({
        enabled            = optional(bool)
        name               = string
        severities_allowed = set(string)
      })))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_fusions : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.alert_rule_template_guid))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_fusions : (
        v.source == null || alltrue([for item in v.source : (length(item.name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_fusions : (
        v.source == null || alltrue([for item in v.source : (item.sub_type == null || alltrue([for item in item.sub_type : (length(item.name) > 0)]))])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

