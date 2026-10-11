output "service_principals_lookup_id" {
  description = "Map of id values across all service_principals_lookup, keyed the same as var.service_principals_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_service_principals.service_principals_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_principals_lookup_api" {
  description = "Map of api values across all service_principals_lookup, keyed the same as var.service_principals_lookup except keys with no api are omitted"
  value       = { for k, v in data.databricks_service_principals.service_principals_lookup : k => v.api if v.api != null && length(v.api) > 0 }
}
output "service_principals_lookup_application_ids" {
  description = "Map of application_ids values across all service_principals_lookup, keyed the same as var.service_principals_lookup except keys with no application_ids are omitted"
  value       = { for k, v in data.databricks_service_principals.service_principals_lookup : k => v.application_ids if v.application_ids != null && length(v.application_ids) > 0 }
}
output "service_principals_lookup_display_name_contains" {
  description = "Map of display_name_contains values across all service_principals_lookup, keyed the same as var.service_principals_lookup except keys with no display_name_contains are omitted"
  value       = { for k, v in data.databricks_service_principals.service_principals_lookup : k => v.display_name_contains if v.display_name_contains != null && length(v.display_name_contains) > 0 }
}
output "service_principals_lookup_provider_config" {
  description = "Map of provider_config values across all service_principals_lookup, keyed the same as var.service_principals_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_service_principals.service_principals_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "service_principals_lookup_service_principals" {
  description = "Map of service_principals values across all service_principals_lookup, keyed the same as var.service_principals_lookup except keys with no service_principals are omitted"
  value       = { for k, v in data.databricks_service_principals.service_principals_lookup : k => v.service_principals if v.service_principals != null && length(v.service_principals) > 0 }
}

