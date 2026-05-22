output "id" {
  description = "Unique identifier that can’t be changed after creation"
  value       = oci_cloud_guard_security_zone.this.id
}

output "compartment_id" {
  description = "The OCID of the compartment for the security zone"
  value       = oci_cloud_guard_security_zone.this.compartment_id
}

output "description" {
  description = "The security zone's description"
  value       = oci_cloud_guard_security_zone.this.description
}

output "display_name" {
  description = "The security zone's display name"
  value       = oci_cloud_guard_security_zone.this.display_name
}

output "inherited_by_compartments" {
  description = "List of inherited compartments"
  value       = oci_cloud_guard_security_zone.this.inherited_by_compartments
}

output "is_inheritance_after_delete_enabled" {
  description = "Indicates if upon deletion of the security zone the comparment should inherit parent security zone"
  value       = oci_cloud_guard_security_zone.this.is_inheritance_after_delete_enabled
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, this can be used to provide actionable information for a zone in the `Failed` state."
  value       = oci_cloud_guard_security_zone.this.lifecycle_details
}

output "security_zone_recipe_id" {
  description = "The OCID of the recipe (`SecurityRecipe` resource) for the security zone"
  value       = oci_cloud_guard_security_zone.this.security_zone_recipe_id
}

output "security_zone_target_id" {
  description = "The OCID of the target associated with the security zone"
  value       = oci_cloud_guard_security_zone.this.security_zone_target_id
}

output "state" {
  description = "The current lifecycle state of the security zone"
  value       = oci_cloud_guard_security_zone.this.state
}

output "time_created" {
  description = "The time the security zone was created. An RFC3339 formatted datetime string."
  value       = oci_cloud_guard_security_zone.this.time_created
}

output "time_updated" {
  description = "The time the security zone was last updated. An RFC3339 formatted datetime string."
  value       = oci_cloud_guard_security_zone.this.time_updated
}
