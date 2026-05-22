variable "agent_version" {
  description = "(Required) The version of the agent making the request"
  type        = string
}

variable "certificate_signed_request" {
  description = "(Required) (Updatable) The certificate signed request containing domain, organization names, organization units, city, state, country, email and public key, among other certificate details, signed by private key"
  type        = string
}

variable "compartment_id" {
  description = "(Required) Compartment OCID of the host"
  type        = string
}

variable "os_info" {
  description = "(Required) Concatenated OS name, OS version and agent architecture; for example, ubuntu_22.0_amd64."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}
