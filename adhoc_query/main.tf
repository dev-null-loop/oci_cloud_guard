resource "oci_cloud_guard_adhoc_query" "this" {
  compartment_id = var.compartment_id

  defined_tags  = var.defined_tags
  freeform_tags = var.freeform_tags

  adhoc_query_details {
    query = var.adhoc_query_details.query

    dynamic "adhoc_query_resources" {
      for_each = var.adhoc_query_details.adhoc_query_resources
      content {
        region        = adhoc_query_resources.value.region
        resource_ids  = adhoc_query_resources.value.resource_ids
        resource_type = adhoc_query_resources.value.resource_type
      }
    }
  }
}
