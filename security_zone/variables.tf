variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment for the security zone"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) The security zone's display name"
  type        = string
}

variable "security_zone_recipe_id" {
  description = "(Required) (Updatable) The OCID of the security zone recipe (`SecurityRecipe` resource) for the security zone"
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) The security zone's description"
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}

variable "is_inheritance_after_delete_enabled" {
  description = "(Optional) (Updatable) Indicates if upon deletion of the security zone the comparment should inherit parent security zone"
  type        = bool
  default     = null
}
