output "id" {
  description = "The Cloud Guard configuration composite identifier."
  value       = oci_cloud_guard_cloud_guard_configuration.this.id
}

output "reporting_region" {
  description = "The reporting region"
  value       = oci_cloud_guard_cloud_guard_configuration.this.reporting_region
}

output "self_manage_resources" {
  description = "Were Oracle-managed resources created by customer?"
  value       = oci_cloud_guard_cloud_guard_configuration.this.self_manage_resources
}

output "status" {
  description = "Status of the Cloud Guard tenant"
  value       = oci_cloud_guard_cloud_guard_configuration.this.status
}
