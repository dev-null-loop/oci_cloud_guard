variable "compartment_id" {
  description = "(Required) (Updatable) Compartment OCID"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) Managed list display name.\n\nAvoid entering confidential information."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Managed list description\n\nAvoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}

variable "group" {
  description = "(Optional) (Updatable) Managed list type group"
  type        = string
  default     = null
}

variable "list_items" {
  description = "(Optional) (Updatable) List of items in the managed list"
  type        = list(string)
  default     = []
}

variable "list_type" {
  description = "(Optional) Type of information stored in the list"
  type        = string
  default     = null
}

variable "source_managed_list_id" {
  description = "(Optional) OCID of the source managed list"
  type        = string
  default     = null
}
