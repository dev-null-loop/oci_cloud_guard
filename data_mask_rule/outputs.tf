output "id" {
  description = "Unique identifier that can't be changed after creation"
  value       = oci_cloud_guard_data_mask_rule.this.id
}

output "compartment_id" {
  description = "Compartment OCID where the resource is created"
  value       = oci_cloud_guard_data_mask_rule.this.compartment_id
}

output "data_mask_categories" {
  description = "List of data mask rule categories"
  value       = oci_cloud_guard_data_mask_rule.this.data_mask_categories
}

output "data_mask_rule_status" {
  description = "The current status of the data mask rule"
  value       = oci_cloud_guard_data_mask_rule.this.data_mask_rule_status
}

output "description" {
  description = "The data mask rule description"
  value       = oci_cloud_guard_data_mask_rule.this.description
}

output "display_name" {
  description = "Data mask rule display name"
  value       = oci_cloud_guard_data_mask_rule.this.display_name
}

output "iam_group_id" {
  description = "IAM Group ID associated with the data mask rule"
  value       = oci_cloud_guard_data_mask_rule.this.iam_group_id
}

output "lifecyle_details" {
  description = "Additional details on the substate of the lifecycle state [DEPRECATE]"
  value       = oci_cloud_guard_data_mask_rule.this.lifecyle_details
}

output "state" {
  description = "The current lifecycle state of the data mask rule"
  value       = oci_cloud_guard_data_mask_rule.this.state
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). System tags can be viewed by users, but can only be created by the system. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_cloud_guard_data_mask_rule.this.system_tags
}

output "target_selected" {
  description = "Specification of how targets are to be selected (select ALL, or select by TargetResourceType or TargetId)."
  value       = oci_cloud_guard_data_mask_rule.this.target_selected
}

output "time_created" {
  description = "The date and time the target was created. Format defined by RFC3339."
  value       = oci_cloud_guard_data_mask_rule.this.time_created
}

output "time_updated" {
  description = "The date and time the target was updated. Format defined by RFC3339."
  value       = oci_cloud_guard_data_mask_rule.this.time_updated
}
