resource "oci_cloud_guard_cloud_guard_configuration" "this" {
  count                 = local.cloud_guard_enabled == true ? 0 : 1
  compartment_id        = var.compartment_id
  reporting_region      = var.reporting_region
  status                = var.status
  self_manage_resources = var.self_manage_resources
}

resource "oci_cloud_guard_target" "this" {
  compartment_id       = var.compartment_id
  display_name         = var.display_name
  target_resource_id   = var.target_resource_id
  target_resource_type = var.target_resource_type
  defined_tags         = var.defined_tags
  description          = var.description
  freeform_tags        = var.freeform_tags
  state                = var.state

  dynamic "target_detector_recipes" {
    iterator = tdr
    for_each = (
      length(data.oci_cloud_guard_detector_recipes.existing.detector_recipe_collection) > 0 ?
      [for i in data.oci_cloud_guard_detector_recipes.existing.detector_recipe_collection[0].items : i if i.owner == "ORACLE"] :
      []
    )
    content {
      detector_recipe_id = tdr.value.id
    }
  }

  dynamic "target_responder_recipes" {
    iterator = trr
    for_each = (
      length(data.oci_cloud_guard_responder_recipes.existing.responder_recipe_collection) > 0 ?
      data.oci_cloud_guard_responder_recipes.existing.responder_recipe_collection[0].items :
      []
    )
    content {
      responder_recipe_id = trr.value.id
    }
  }
}
