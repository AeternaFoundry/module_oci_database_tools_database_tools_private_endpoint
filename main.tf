resource "oci_database_tools_database_tools_private_endpoint" "database_tools_database_tools_private_endpoints" {
  for_each = var.database_tools_database_tools_private_endpoints

  compartment_id      = each.value.compartment_id
  display_name        = each.value.display_name
  endpoint_service_id = each.value.endpoint_service_id
  subnet_id           = each.value.subnet_id
  defined_tags        = each.value.defined_tags
  description         = each.value.description
  freeform_tags       = each.value.freeform_tags
  nsg_ids             = each.value.nsg_ids
  private_endpoint_ip = each.value.private_endpoint_ip
  security_attributes = each.value.security_attributes

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
      type                = locks.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

