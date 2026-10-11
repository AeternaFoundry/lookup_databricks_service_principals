data "databricks_service_principals" "service_principals_lookup" {
  for_each = var.service_principals_lookup

  api                   = each.value.api
  application_ids       = each.value.application_ids
  display_name_contains = each.value.display_name_contains

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "service_principals" {
    for_each = each.value.service_principals != null ? each.value.service_principals : []
    content {
      acl_principal_id = service_principals.value.acl_principal_id
      active           = service_principals.value.active
      application_id   = service_principals.value.application_id
      display_name     = service_principals.value.display_name
      external_id      = service_principals.value.external_id
      home             = service_principals.value.home
      id               = service_principals.value.id
      repos            = service_principals.value.repos
      scim_id          = service_principals.value.scim_id
      sp_id            = service_principals.value.sp_id
    }
  }
}

