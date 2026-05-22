resource "oci_cloud_guard_managed_list" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name

  defined_tags           = var.defined_tags
  description            = var.description
  freeform_tags          = var.freeform_tags
  group                  = var.group
  list_items             = var.list_items
  list_type              = var.list_type
  source_managed_list_id = var.source_managed_list_id
}
