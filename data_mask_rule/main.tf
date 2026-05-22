resource "oci_cloud_guard_data_mask_rule" "this" {
  compartment_id       = var.compartment_id
  data_mask_categories = var.data_mask_categories
  display_name         = var.display_name
  iam_group_id         = var.iam_group_id

  data_mask_rule_status = var.data_mask_rule_status
  defined_tags          = var.defined_tags
  description           = var.description
  freeform_tags         = var.freeform_tags
  state                 = var.state

  target_selected {
    kind   = var.target_selected.kind
    values = var.target_selected.values
  }
}
