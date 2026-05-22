output "id" {
  description = "OCID for the saved query"
  value       = oci_cloud_guard_saved_query.this.id
}

output "compartment_id" {
  description = "Compartment OCID of the saved query"
  value       = oci_cloud_guard_saved_query.this.compartment_id
}

output "description" {
  description = "Description of the saved query"
  value       = oci_cloud_guard_saved_query.this.description
}

output "display_name" {
  description = "Display name of the saved query"
  value       = oci_cloud_guard_saved_query.this.display_name
}

output "query" {
  description = "The saved query expression"
  value       = oci_cloud_guard_saved_query.this.query
}

output "state" {
  description = "The current lifecycle state of the resource"
  value       = oci_cloud_guard_saved_query.this.state
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). System tags can be viewed by users, but can only be created by the system. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_cloud_guard_saved_query.this.system_tags
}

output "time_created" {
  description = "The date and time the saved query was created. Format defined by RFC3339."
  value       = oci_cloud_guard_saved_query.this.time_created
}

output "time_updated" {
  description = "The date and time the saved query was updated. Format defined by RFC3339."
  value       = oci_cloud_guard_saved_query.this.time_updated
}
