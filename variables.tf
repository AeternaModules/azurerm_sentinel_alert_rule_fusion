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
    source = optional(list(object({
      enabled = optional(bool) # Default: true
      name    = string
      sub_type = optional(list(object({
        enabled            = optional(bool) # Default: true
        name               = string
        severities_allowed = set(string)
      })))
    })))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_alert_rule_fusion's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: log_analytics_workspace_id
  #   source:    [from alertrules.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from alertrules.ValidateWorkspaceID] err != nil
  # path: alert_rule_template_guid
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: source.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: source.sub_type.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: source.sub_type.severities_allowed[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

