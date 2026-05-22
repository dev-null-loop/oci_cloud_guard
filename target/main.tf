resource "oci_cloud_guard_target" "this" {
  compartment_id       = var.compartment_id
  display_name         = var.display_name
  target_resource_id   = var.target_resource_id
  target_resource_type = var.target_resource_type

  defined_tags  = var.defined_tags
  description   = var.description
  freeform_tags = var.freeform_tags
  state         = var.state

  dynamic "target_detector_recipes" {
    for_each = var.target_detector_recipes
    content {
      detector_recipe_id = target_detector_recipes.value.detector_recipe_id

      dynamic "detector_rules" {
        for_each = target_detector_recipes.value.detector_rules
        content {
          detector_rule_id = detector_rules.value.detector_rule_id

          details {
            dynamic "condition_groups" {
              for_each = detector_rules.value.details.condition_groups
              content {
                compartment_id = condition_groups.value.compartment_id
                condition      = condition_groups.value.condition
              }
            }
          }
        }
      }
    }
  }

  dynamic "target_responder_recipes" {
    for_each = var.target_responder_recipes
    content {
      responder_recipe_id = target_responder_recipes.value.responder_recipe_id

      dynamic "responder_rules" {
        for_each = target_responder_recipes.value.responder_rules
        content {
          responder_rule_id = responder_rules.value.responder_rule_id

          details {
            condition = responder_rules.value.details.condition
            mode      = responder_rules.value.details.mode

            dynamic "configurations" {
              for_each = responder_rules.value.details.configurations
              content {
                config_key = configurations.value.config_key
                name       = configurations.value.name
                value      = configurations.value.value
              }
            }
          }
        }
      }
    }
  }
}
