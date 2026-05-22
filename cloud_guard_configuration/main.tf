resource "oci_cloud_guard_cloud_guard_configuration" "this" {
  compartment_id   = var.compartment_id
  reporting_region = var.reporting_region
  status           = var.status

  self_manage_resources = var.self_manage_resources
}
