variable "service_principals_lookup" {
  description = <<EOT
Map of service_principals_lookup, attributes below
Optional:
    - api
    - application_ids
    - display_name_contains
    - provider_config (block):
        - workspace_id (optional)
    - service_principals (block):
        - acl_principal_id (optional)
        - active (optional)
        - application_id (optional)
        - display_name (optional)
        - external_id (optional)
        - home (optional)
        - id (optional)
        - repos (optional)
        - scim_id (optional)
        - sp_id (optional)
EOT

  type = map(object({
    api                   = optional(string)
    application_ids       = optional(set(string))
    display_name_contains = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    service_principals = optional(list(object({
      acl_principal_id = optional(string)
      active           = optional(bool)
      application_id   = optional(string)
      display_name     = optional(string)
      external_id      = optional(string)
      home             = optional(string)
      id               = optional(string)
      repos            = optional(string)
      scim_id          = optional(string)
      sp_id            = optional(string)
    })))
  }))
}

