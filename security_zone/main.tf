resource "oci_cloud_guard_security_zone" "this" {
  compartment_id          = var.compartment_id
  display_name            = var.display_name
  security_zone_recipe_id = var.recipe_id
  defined_tags            = var.defined_tags
  description             = var.description
  freeform_tags           = var.freeform_tags
}
