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
    enabled                    = optional(bool)   # Default: true
    name                       = optional(string) # Default: "BuiltInFusion"
    source = optional(object({
      enabled = optional(bool) # Default: true
      name    = string
      sub_type = optional(object({
        enabled            = optional(bool) # Default: true
        name               = string
        severities_allowed = set(string)
      }))
    }))
  }))
}

