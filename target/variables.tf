variable "compartment_id" {
  description = "(Required) (Updatable) The ID of the compartment in which to list resources."
  type        = string
}

variable "tenancy_id" {
  description = "(Required) (Updatable) The ID of the tenancy in which to list resources."
  type        = string
}

variable "reporting_region" {
  description = "(Required) (Updatable) The reporting region value"
  type        = string
}

variable "self_manage_resources" {
  description = "(Optional) (Updatable) Identifies if Oracle managed resources will be created by customers. If no value is specified false is the default. "
  type        = bool
  default     = false
}

variable "status" {
  description = "(Required) (Updatable) Status of Cloud Guard Tenant"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) DetectorTemplate identifier."
  type        = string
}

variable "target_resource_id" {
  description = "(Required) Resource ID which the target uses to monitor"
  type        = string
}

variable "target_resource_type" {
  description = "(Required) possible type of targets(COMPARTMENT/FACLOUD)"
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  nullable    = true
  default     = null
}

variable "description" {
  description = "(Optional) The target description."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only."
  type        = map(string)
  default     = {}
}

variable "state" {
  description = "(Optional) (Updatable) The current state of the DetectorRule."
  type        = string
  default     = null
}

# variable "cloud_guard_config" {
#   type = map(object({
#     comp_name             = string
#     status                = string
#     self_manage_resources = bool
#     region_name           = string
#   }))
# }

# variable "cloud_guard_target" {
#   type = map(object({
#     comp_name    = string
#     display_name = string
#     target_name  = string
#     target_type  = string
#   }))
# }

# variable "compartments" {
#   type = map(string)
# }

# variable "cloud_guard_target_resource" {
#   type = map(string)
# }

# variable "auth_provider" {
#   type = map(string)
# }

# variable "provider_oci" {
#   type = map(string)
# }
