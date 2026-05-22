variable "compartment_id" {
  description = "(Required) (Updatable) Compartment OCID"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) Detector recipe display name.\n\nAvoid entering confidential information."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Detector recipe description.\n\nAvoid entering confidential information."
  type        = string
  default     = null
}

variable "detector" {
  description = "(Optional) Detector for the rule"
  type        = string
  default     = null
}

variable "detector_rules" {
  description = "(Optional) (Updatable) Detector rules to override from source detector recipe"
  type = list(object({
    details = object({
      is_enabled = bool
      risk_level = string
      condition  = optional(string)
      configurations = optional(list(object({
        config_key = string
        data_type  = optional(string)
        name       = string
        value      = optional(string)
        values = optional(list(object({
          list_type         = string
          managed_list_type = string
          value             = string
        })), [])
      })), [])
      data_source_id = optional(string)
      description    = optional(string)
      entities_mappings = optional(list(object({
        display_name = optional(string)
        entity_type  = optional(string)
        query_field  = string
      })), [])
      labels         = optional(list(string), [])
      recommendation = optional(string)
    })
    detector_rule_id = string
  }))
  default = []
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}

variable "source_detector_recipe_id" {
  description = "(Optional) The ID of the source detector recipe"
  type        = string
  default     = null
}
