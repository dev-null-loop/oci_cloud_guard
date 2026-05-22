variable "compartment_id" {
  description = "(Required) Compartment OCID of adhoc query"
  type        = string
}

variable "adhoc_query_details" {
  description = "(Required) Detailed information about the adhoc query."
  type = object({
    adhoc_query_resources = list(object({
      region        = optional(string)
      resource_ids  = optional(list(string), [])
      resource_type = optional(string)
    }))
    query = string
  })
}

variable "defined_tags" {
  description = "(Optional) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}
