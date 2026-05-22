resource "oci_cloud_guard_saved_query" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  query          = var.query

  defined_tags  = var.defined_tags
  description   = var.description
  freeform_tags = var.freeform_tags
}
