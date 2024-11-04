variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment for the security zone"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) The security zone's name"
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  nullable    = true
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) The security zone's description"
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only."
  type        = map(string)
  default     = {}
}

variable "recipe_id" {
  description = "(Required) (Updatable) The OCID of the recipe (`SecurityRecipe`) for the security zone"
  type        = string
}
