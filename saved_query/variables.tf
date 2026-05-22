variable "compartment_id" {
  description = "(Required) (Updatable) Compartment OCID of the saved query"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) Display name of the saved query"
  type        = string
}

variable "query" {
  description = "(Required) (Updatable) The adhoc query expression that is run"
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Description of the saved query"
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}
