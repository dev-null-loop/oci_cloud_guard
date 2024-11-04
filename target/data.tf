data "oci_cloud_guard_cloud_guard_configuration" "this" {
  compartment_id = var.tenancy_id
}

locals {
  cloud_guard_enabled = (
    data.oci_cloud_guard_cloud_guard_configuration.this.status == "ENABLED" ?
    true :
    false
  )
}

data "oci_cloud_guard_detector_recipes" "existing" {
  depends_on     = [oci_cloud_guard_cloud_guard_configuration.this]
  compartment_id = var.tenancy_id
}

data "oci_cloud_guard_responder_recipes" "existing" {
  depends_on     = [oci_cloud_guard_cloud_guard_configuration.this]
  compartment_id = var.tenancy_id
}
