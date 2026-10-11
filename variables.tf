variable "database_tools_database_tools_private_endpoints" {
  description = <<EOT
Map of database_tools_database_tools_private_endpoints, attributes below
Required:
    - compartment_id
    - display_name
    - endpoint_service_id
    - subnet_id
Optional:
    - defined_tags
    - description
    - freeform_tags
    - nsg_ids
    - private_endpoint_ip
    - security_attributes
    - locks (block):
        - message (optional)
        - related_resource_id (optional)
        - time_created (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id      = string
    display_name        = string
    endpoint_service_id = string
    subnet_id           = string
    defined_tags        = optional(map(string))
    description         = optional(string)
    freeform_tags       = optional(map(string))
    nsg_ids             = optional(set(string))
    private_endpoint_ip = optional(string)
    security_attributes = optional(map(string))
    locks = optional(list(object({
      message             = optional(string)
      related_resource_id = optional(string)
      time_created        = optional(string)
      type                = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

