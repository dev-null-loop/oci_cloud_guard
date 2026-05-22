output "id" {
  description = "Unique identifier that can't be changed after creation"
  value       = oci_cloud_guard_target.this.id
}

output "compartment_id" {
  description = "Compartment OCID where the resource is created"
  value       = oci_cloud_guard_target.this.compartment_id
}

output "description" {
  description = "The target description"
  value       = oci_cloud_guard_target.this.description
}

output "display_name" {
  description = "Target display name"
  value       = oci_cloud_guard_target.this.display_name
}

output "inherited_by_compartments" {
  description = "List of inherited compartments"
  value       = oci_cloud_guard_target.this.inherited_by_compartments
}

output "lifecyle_details" {
  description = "A message describing the current lifecycle state in more detail. For example, can be used to provide actionable information for a resource in Failed state. [DEPRECATE]"
  value       = oci_cloud_guard_target.this.lifecyle_details
}

output "recipe_count" {
  description = "Total number of recipes attached to target"
  value       = oci_cloud_guard_target.this.recipe_count
}

output "state" {
  description = "The current lifecycle state of the target"
  value       = oci_cloud_guard_target.this.state
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). System tags can be viewed by users, but can only be created by the system. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_cloud_guard_target.this.system_tags
}

output "target_details" {
  description = "Details specific to the target type."
  value       = oci_cloud_guard_target.this.target_details
}

output "target_detector_recipes" {
  description = "List of detector recipes attached to target"
  value       = oci_cloud_guard_target.this.target_detector_recipes
}

output "target_responder_recipes" {
  description = "List of responder recipes attached to target"
  value       = oci_cloud_guard_target.this.target_responder_recipes
}
