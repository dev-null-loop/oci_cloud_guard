resource "oci_cloud_guard_security_recipe" "this" {
  compartment_id    = var.compartment_id
  display_name      = var.display_name
  security_policies = var.security_policies

  defined_tags  = var.defined_tags
  description   = var.description
  freeform_tags = var.freeform_tags
}
