output "id" {
  description = "OCID for WlpAgent"
  value       = oci_cloud_guard_wlp_agent.this.id
}

output "agent_version" {
  description = "The version of the agent"
  value       = oci_cloud_guard_wlp_agent.this.agent_version
}

output "certificate_id" {
  description = "The certificate ID returned by Oracle Cloud Infrastructure certificates service"
  value       = oci_cloud_guard_wlp_agent.this.certificate_id
}

output "certificate_signed_request" {
  description = "The updated certificate signing request"
  value       = oci_cloud_guard_wlp_agent.this.certificate_signed_request
}

output "compartment_id" {
  description = "Compartment OCID of WlpAgent."
  value       = oci_cloud_guard_wlp_agent.this.compartment_id
}

output "host_id" {
  description = "OCID for instance in which WlpAgent is installed"
  value       = oci_cloud_guard_wlp_agent.this.host_id
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). System tags can be viewed by users, but can only be created by the system. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_cloud_guard_wlp_agent.this.system_tags
}

output "tenant_id" {
  description = "TenantId of the host"
  value       = oci_cloud_guard_wlp_agent.this.tenant_id
}

output "time_created" {
  description = "The date and time the WlpAgent was created. Format defined by RFC3339."
  value       = oci_cloud_guard_wlp_agent.this.time_created
}

output "time_updated" {
  description = "The date and time the WlpAgent was updated. Format defined by RFC3339."
  value       = oci_cloud_guard_wlp_agent.this.time_updated
}
