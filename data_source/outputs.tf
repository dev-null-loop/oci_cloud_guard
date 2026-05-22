output "id" {
  description = "OCID for the data source"
  value       = oci_cloud_guard_data_source.this.id
}

output "compartment_id" {
  description = "Compartment OCID of data source"
  value       = oci_cloud_guard_data_source.this.compartment_id
}

output "data_source_details" {
  description = "Details specific to the data source type."
  value       = oci_cloud_guard_data_source.this.data_source_details
}

output "data_source_detector_mapping_info" {
  description = "Information about the detector recipe and rule attached"
  value       = oci_cloud_guard_data_source.this.data_source_detector_mapping_info
}

output "data_source_feed_provider" {
  description = "Possible type of dataSourceFeed Provider(LoggingQuery)"
  value       = oci_cloud_guard_data_source.this.data_source_feed_provider
}

output "display_name" {
  description = "Display name of the data source"
  value       = oci_cloud_guard_data_source.this.display_name
}

output "region_status_detail" {
  description = "Information about the region and status of query replication"
  value       = oci_cloud_guard_data_source.this.region_status_detail
}

output "state" {
  description = "The current lifecycle state of the resource."
  value       = oci_cloud_guard_data_source.this.state
}

output "status" {
  description = "Enablement status of the data source"
  value       = oci_cloud_guard_data_source.this.status
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). System tags can be viewed by users, but can only be created by the system. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_cloud_guard_data_source.this.system_tags
}

output "time_created" {
  description = "The date and time the Data source was created. Format defined by RFC3339."
  value       = oci_cloud_guard_data_source.this.time_created
}

output "time_updated" {
  description = "The date and time the data source was updated. Format defined by RFC3339."
  value       = oci_cloud_guard_data_source.this.time_updated
}
