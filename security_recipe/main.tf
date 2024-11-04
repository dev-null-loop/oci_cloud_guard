data "oci_cloud_guard_security_policies" "this" {
  compartment_id = var.compartment_id
}

locals {
  security_policies_ids = data.oci_cloud_guard_security_policies.this.security_policy_collection[0].items[*].id
}

resource "oci_cloud_guard_security_recipe" "this" {
  compartment_id    = var.compartment_id
  display_name      = var.display_name
  security_policies = local.security_policies_ids
  defined_tags      = var.defined_tags
  description       = var.description
  freeform_tags     = var.freeform_tags
}
