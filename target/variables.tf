variable "compartment_id" {
  description = "(Required) Compartment OCID where the resource is created"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) Display name for the target.\n\nAvoid entering confidential information."
  type        = string
}

variable "target_resource_id" {
  description = "(Required) Resource ID which the target uses to monitor"
  type        = string
}

variable "target_resource_type" {
  description = "(Required) Type of resource that target support (COMPARTMENT/FACLOUD)"
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) The target description.\n\nAvoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}

variable "state" {
  description = "(Optional) (Updatable) The enablement state of the detector rule"
  type        = string
  default     = null
}

variable "target_detector_recipes" {
  description = "(Optional) (Updatable) List of detector recipes to attach to target"
  type = list(object({
    detector_recipe_id = string
    detector_rules = optional(list(object({
      details = object({
        condition_groups = optional(list(object({
          compartment_id = string
          condition      = string
        })), [])
      })
      detector_rule_id = string
    })), [])
  }))
  default = []
}

variable "target_responder_recipes" {
  description = "(Optional) (Updatable) List of responder recipes to attach to target"
  type = list(object({
    responder_recipe_id = string
    responder_rules = optional(list(object({
      details = object({
        condition = optional(string)
        configurations = optional(list(object({
          config_key = string
          name       = string
          value      = string
        })), [])
        mode = optional(string)
      })
      responder_rule_id = string
    })), [])
  }))
  default = []
}
