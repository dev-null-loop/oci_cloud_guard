output "id" {
  description = "OCID for detector recipe"
  value       = oci_cloud_guard_detector_recipe.this.id
}

output "compartment_id" {
  description = "Compartment OCID of detector recipe"
  value       = oci_cloud_guard_detector_recipe.this.compartment_id
}

output "description" {
  description = "Detector recipe description"
  value       = oci_cloud_guard_detector_recipe.this.description
}

output "detector" {
  description = "Type of detector"
  value       = oci_cloud_guard_detector_recipe.this.detector
}

output "detector_recipe_type" {
  description = "Recipe type ( STANDARD, ENTERPRISE )"
  value       = oci_cloud_guard_detector_recipe.this.detector_recipe_type
}

output "detector_rules" {
  description = "List of detector rules for the detector type for recipe - user input"
  value       = oci_cloud_guard_detector_recipe.this.detector_rules
}

output "display_name" {
  description = "Display name of detector recipe"
  value       = oci_cloud_guard_detector_recipe.this.display_name
}

output "effective_detector_rules" {
  description = "List of effective detector rules for the detector type for recipe after applying defaults"
  value       = oci_cloud_guard_detector_recipe.this.effective_detector_rules
}

output "owner" {
  description = "Owner of detector recipe"
  value       = oci_cloud_guard_detector_recipe.this.owner
}

output "source_detector_recipe_id" {
  description = "Recipe OCID of the source recipe to be cloned"
  value       = oci_cloud_guard_detector_recipe.this.source_detector_recipe_id
}

output "state" {
  description = "The current lifecycle state of the resource"
  value       = oci_cloud_guard_detector_recipe.this.state
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). System tags can be viewed by users, but can only be created by the system. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_cloud_guard_detector_recipe.this.system_tags
}

output "target_ids" {
  description = "List of target IDs to which the recipe is attached"
  value       = oci_cloud_guard_detector_recipe.this.target_ids
}

output "time_created" {
  description = "The date and time the detector recipe was created Format defined by RFC3339."
  value       = oci_cloud_guard_detector_recipe.this.time_created
}

output "time_updated" {
  description = "The date and time the detector recipe was last updated Format defined by RFC3339."
  value       = oci_cloud_guard_detector_recipe.this.time_updated
}
