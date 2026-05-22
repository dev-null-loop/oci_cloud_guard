output "id" {
  description = "Unique identifier that can't be changed after creation"
  value       = oci_cloud_guard_managed_list.this.id
}

output "compartment_id" {
  description = "Compartment OCID where the resource is created"
  value       = oci_cloud_guard_managed_list.this.compartment_id
}

output "description" {
  description = "Managed list description"
  value       = oci_cloud_guard_managed_list.this.description
}

output "display_name" {
  description = "Managed list display name"
  value       = oci_cloud_guard_managed_list.this.display_name
}

output "feed_provider" {
  description = "Provider of the managed list feed"
  value       = oci_cloud_guard_managed_list.this.feed_provider
}

output "group" {
  description = "Managed list type group"
  value       = oci_cloud_guard_managed_list.this.group
}

output "is_editable" {
  description = "Is this list editable?"
  value       = oci_cloud_guard_managed_list.this.is_editable
}

output "lifecyle_details" {
  description = "A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state. [DEPRECATE]"
  value       = oci_cloud_guard_managed_list.this.lifecyle_details
}

output "list_items" {
  description = "List of items in the managed list"
  value       = oci_cloud_guard_managed_list.this.list_items
}

output "list_type" {
  description = "Type of information contained in the managed list"
  value       = oci_cloud_guard_managed_list.this.list_type
}

output "source_managed_list_id" {
  description = "OCID of the source managed list"
  value       = oci_cloud_guard_managed_list.this.source_managed_list_id
}

output "state" {
  description = "The current lifecycle state of the resource"
  value       = oci_cloud_guard_managed_list.this.state
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). System tags can be viewed by users, but can only be created by the system. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_cloud_guard_managed_list.this.system_tags
}

output "time_created" {
  description = "The date and time the managed list was created. Format defined by RFC3339."
  value       = oci_cloud_guard_managed_list.this.time_created
}

output "time_updated" {
  description = "The date and time the managed list was last updated. Format defined by RFC3339."
  value       = oci_cloud_guard_managed_list.this.time_updated
}
