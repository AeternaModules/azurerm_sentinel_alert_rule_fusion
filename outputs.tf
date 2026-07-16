output "sentinel_alert_rule_fusions_id" {
  description = "Map of id values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sentinel_alert_rule_fusions_alert_rule_template_guid" {
  description = "Map of alert_rule_template_guid values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.alert_rule_template_guid if v.alert_rule_template_guid != null && length(v.alert_rule_template_guid) > 0 }
}
output "sentinel_alert_rule_fusions_enabled" {
  description = "Map of enabled values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.enabled if v.enabled != null }
}
output "sentinel_alert_rule_fusions_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.log_analytics_workspace_id if v.log_analytics_workspace_id != null && length(v.log_analytics_workspace_id) > 0 }
}
output "sentinel_alert_rule_fusions_name" {
  description = "Map of name values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sentinel_alert_rule_fusions_source" {
  description = "Map of source values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.source if v.source != null && length(v.source) > 0 }
}

