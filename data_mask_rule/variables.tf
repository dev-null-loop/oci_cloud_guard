variable "compartment_id" {
  description = "(Required) (Updatable) Compartment OCID where the resource is created"
  type        = string
}

variable "data_mask_categories" {
  description = "(Required) (Updatable) Data mask rule categories"
  type        = list(string)
}

variable "display_name" {
  description = "(Required) (Updatable) Data mask rule display name\n\nAvoid entering confidential information."
  type        = string
}

variable "iam_group_id" {
  description = "(Required) (Updatable) IAM group ID associated with the data mask rule"
  type        = string
}

variable "target_selected" {
  description = "(Required) (Updatable) Specification of how targets are to be selected (select ALL, or select by TargetResourceType or TargetId)."
  type = object({
    kind   = string
    values = optional(list(string), [])
  })
}

variable "data_mask_rule_status" {
  description = "(Optional) (Updatable) The current status of the data mask rule"
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) The data mask rule description Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}

variable "state" {
  description = "(Optional) The current lifecycle state of the data mask rule"
  type        = string
  default     = null
}
