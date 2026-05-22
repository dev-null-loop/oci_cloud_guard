output "id" {
  description = "Unique identifier for the responder recip"
  value       = oci_cloud_guard_responder_recipe.this.id
}

output "compartment_id" {
  description = "Compartment OCID"
  value       = oci_cloud_guard_responder_recipe.this.compartment_id
}

output "description" {
  description = "Responder recipe description"
  value       = oci_cloud_guard_responder_recipe.this.description
}

output "display_name" {
  description = "Responder recipe display name"
  value       = oci_cloud_guard_responder_recipe.this.display_name
}

output "effective_responder_rules" {
  description = "List of currently enabled responder rules for the responder type, for recipe after applying defaults"
  value       = oci_cloud_guard_responder_recipe.this.effective_responder_rules
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state."
  value       = oci_cloud_guard_responder_recipe.this.lifecycle_details
}

output "owner" {
  description = "Owner of responder recipe"
  value       = oci_cloud_guard_responder_recipe.this.owner
}

output "responder_rules" {
  description = "List of responder rules associated with the recipe"
  value       = oci_cloud_guard_responder_recipe.this.responder_rules
}

output "source_responder_recipe_id" {
  description = "The unique identifier of the source responder recipe"
  value       = oci_cloud_guard_responder_recipe.this.source_responder_recipe_id
}

output "state" {
  description = "The current lifecycle state of the example"
  value       = oci_cloud_guard_responder_recipe.this.state
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). System tags can be viewed by users, but can only be created by the system. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_cloud_guard_responder_recipe.this.system_tags
}

output "time_created" {
  description = "The date and time the responder recipe was created. Format defined by RFC3339."
  value       = oci_cloud_guard_responder_recipe.this.time_created
}

output "time_updated" {
  description = "The date and time the responder recipe was last updated. Format defined by RFC3339."
  value       = oci_cloud_guard_responder_recipe.this.time_updated
}
