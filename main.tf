resource "azurerm_sentinel_alert_rule_fusion" "sentinel_alert_rule_fusions" {
  for_each = var.sentinel_alert_rule_fusions

  alert_rule_template_guid   = each.value.alert_rule_template_guid
  log_analytics_workspace_id = each.value.log_analytics_workspace_id
  enabled                    = each.value.enabled
  name                       = each.value.name

  dynamic "source" {
    for_each = each.value.source != null ? each.value.source : []
    content {
      enabled = source.value.enabled
      name    = source.value.name
      dynamic "sub_type" {
        for_each = source.value.sub_type != null ? source.value.sub_type : []
        content {
          enabled            = sub_type.value.enabled
          name               = sub_type.value.name
          severities_allowed = sub_type.value.severities_allowed
        }
      }
    }
  }
}

