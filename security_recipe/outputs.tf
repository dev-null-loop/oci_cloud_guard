output "id" {
  description = "Unique identifier that can't be changed after creation"
  value       = oci_cloud_guard_security_recipe.this.id
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the recipe"
  value       = oci_cloud_guard_security_recipe.this.compartment_id
}

output "description" {
  description = "The recipe's description"
  value       = oci_cloud_guard_security_recipe.this.description
}

output "display_name" {
  description = "The recipe's display name"
  value       = oci_cloud_guard_security_recipe.this.display_name
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, this can be used to provide actionable information for a recipe in the `Failed` state."
  value       = oci_cloud_guard_security_recipe.this.lifecycle_details
}

output "owner" {
  description = "The owner of the recipe"
  value       = oci_cloud_guard_security_recipe.this.owner
}

output "security_policies" {
  description = "The list of security policy IDs that are included in the recipe"
  value       = oci_cloud_guard_security_recipe.this.security_policies
}

output "state" {
  description = "The current lifecycle state of the recipe"
  value       = oci_cloud_guard_security_recipe.this.state
}

output "time_created" {
  description = "The time the recipe was created. An RFC3339 formatted datetime string."
  value       = oci_cloud_guard_security_recipe.this.time_created
}

output "time_updated" {
  description = "The time the recipe was last updated. An RFC3339 formatted datetime string."
  value       = oci_cloud_guard_security_recipe.this.time_updated
}
