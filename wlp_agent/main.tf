resource "oci_cloud_guard_wlp_agent" "this" {
  agent_version              = var.agent_version
  certificate_signed_request = var.certificate_signed_request
  compartment_id             = var.compartment_id
  os_info                    = var.os_info

  defined_tags  = var.defined_tags
  freeform_tags = var.freeform_tags
}
