output "id" {
  description = "OCID for the adhoc query"
  value       = oci_cloud_guard_adhoc_query.this.id
}

output "adhoc_query_details" {
  description = "Detailed information about the adhoc query."
  value       = oci_cloud_guard_adhoc_query.this.adhoc_query_details
}

output "adhoc_query_regional_details" {
  description = "Instance level status for each region"
  value       = oci_cloud_guard_adhoc_query.this.adhoc_query_regional_details
}

output "compartment_id" {
  description = "Compartment OCID of the adhoc query"
  value       = oci_cloud_guard_adhoc_query.this.compartment_id
}

output "error_message" {
  description = "Error message to show on UI in case of failure"
  value       = oci_cloud_guard_adhoc_query.this.error_message
}

output "state" {
  description = "The current lifecycle state of the resource."
  value       = oci_cloud_guard_adhoc_query.this.state
}

output "status" {
  description = "Status of the adhoc query"
  value       = oci_cloud_guard_adhoc_query.this.status
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). System tags can be viewed by users, but can only be created by the system. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_cloud_guard_adhoc_query.this.system_tags
}

output "time_created" {
  description = "The date and time the adhoc query was created. Format defined by RFC3339."
  value       = oci_cloud_guard_adhoc_query.this.time_created
}

output "time_updated" {
  description = "The date and time the adhoc query was updated. Format defined by RFC3339."
  value       = oci_cloud_guard_adhoc_query.this.time_updated
}
