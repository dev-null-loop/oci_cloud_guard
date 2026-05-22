variable "compartment_id" {
  description = "(Required) (Updatable) Compartment OCID"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) Responder recipe display name.\n\nAvoid entering confidential information."
  type        = string
}

variable "source_responder_recipe_id" {
  description = "(Required) The unique identifier of the source responder recipe"
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Responder recipe description.\n\nAvoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}

variable "responder_rules" {
  description = "(Optional) (Updatable) List of responder rules to override from source responder recipe"
  type = list(object({
    compartment_id = optional(string)
    details = object({
      is_enabled = bool
    })
    responder_rule_id = string
  }))
  default = []
}
