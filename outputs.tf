output "sentinel_alert_rule_fusions_id" {
  description = "Map of id values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.id }
}
output "sentinel_alert_rule_fusions_alert_rule_template_guid" {
  description = "Map of alert_rule_template_guid values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.alert_rule_template_guid }
}
output "sentinel_alert_rule_fusions_enabled" {
  description = "Map of enabled values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.enabled }
}
output "sentinel_alert_rule_fusions_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.log_analytics_workspace_id }
}
output "sentinel_alert_rule_fusions_name" {
  description = "Map of name values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.name }
}
output "sentinel_alert_rule_fusions_source" {
  description = "Map of source values across all sentinel_alert_rule_fusions, keyed the same as var.sentinel_alert_rule_fusions"
  value       = { for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : k => v.source }
}

