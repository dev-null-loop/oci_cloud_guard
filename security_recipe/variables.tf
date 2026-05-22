variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment in which to create the recipe"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) The recipe's display name.\n\nAvoid entering confidential information."
  type        = string
}

variable "security_policies" {
  description = "(Required) (Updatable) The list of security policy IDs to include in the recipe"
  type        = list(string)
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) The recipe's description"
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}
