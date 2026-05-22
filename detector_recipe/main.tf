resource "oci_cloud_guard_detector_recipe" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name

  defined_tags              = var.defined_tags
  description               = var.description
  detector                  = var.detector
  freeform_tags             = var.freeform_tags
  source_detector_recipe_id = var.source_detector_recipe_id

  dynamic "detector_rules" {
    for_each = var.detector_rules
    content {
      detector_rule_id = detector_rules.value.detector_rule_id

      details {
        is_enabled     = detector_rules.value.details.is_enabled
        risk_level     = detector_rules.value.details.risk_level
        condition      = detector_rules.value.details.condition
        data_source_id = detector_rules.value.details.data_source_id
        description    = detector_rules.value.details.description
        labels         = detector_rules.value.details.labels
        recommendation = detector_rules.value.details.recommendation

        dynamic "configurations" {
          for_each = detector_rules.value.details.configurations
          content {
            config_key = configurations.value.config_key
            data_type  = configurations.value.data_type
            name       = configurations.value.name
            value      = configurations.value.value

            dynamic "values" {
              for_each = configurations.value.values
              content {
                list_type         = values.value.list_type
                managed_list_type = values.value.managed_list_type
                value             = values.value.value
              }
            }
          }
        }

        dynamic "entities_mappings" {
          for_each = detector_rules.value.details.entities_mappings
          content {
            display_name = entities_mappings.value.display_name
            entity_type  = entities_mappings.value.entity_type
            query_field  = entities_mappings.value.query_field
          }
        }
      }
    }
  }
}
