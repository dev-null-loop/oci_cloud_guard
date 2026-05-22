resource "oci_cloud_guard_responder_recipe" "this" {
  compartment_id             = var.compartment_id
  display_name               = var.display_name
  source_responder_recipe_id = var.source_responder_recipe_id

  defined_tags  = var.defined_tags
  description   = var.description
  freeform_tags = var.freeform_tags

  dynamic "responder_rules" {
    for_each = var.responder_rules
    content {
      compartment_id    = responder_rules.value.compartment_id
      responder_rule_id = responder_rules.value.responder_rule_id

      details {
        is_enabled = responder_rules.value.details.is_enabled
      }
    }
  }
}
