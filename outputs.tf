output "sentinel_alert_rule_fusions" {
  description = "All sentinel_alert_rule_fusion resources"
  value       = azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions
}
output "sentinel_alert_rule_fusions_alert_rule_template_guid" {
  description = "List of alert_rule_template_guid values across all sentinel_alert_rule_fusions"
  value       = [for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : v.alert_rule_template_guid]
}
output "sentinel_alert_rule_fusions_enabled" {
  description = "List of enabled values across all sentinel_alert_rule_fusions"
  value       = [for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : v.enabled]
}
output "sentinel_alert_rule_fusions_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all sentinel_alert_rule_fusions"
  value       = [for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : v.log_analytics_workspace_id]
}
output "sentinel_alert_rule_fusions_name" {
  description = "List of name values across all sentinel_alert_rule_fusions"
  value       = [for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : v.name]
}
output "sentinel_alert_rule_fusions_source" {
  description = "List of source values across all sentinel_alert_rule_fusions"
  value       = [for k, v in azurerm_sentinel_alert_rule_fusion.sentinel_alert_rule_fusions : v.source]
}

