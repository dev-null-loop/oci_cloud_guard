variable "compartment_id" {
  description = "(Required) (Updatable) The compartment in which to create the recipe"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) The recipe's name"
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  nullable    = true
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) The recipe's description"
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only."
  type        = map(string)
  default     = {}
}

variable "security_policies" {
  description = "(Required) (Updatable) The list of `SecurityPolicy` ids to include in the recipe"
  type        = list(string)
}
