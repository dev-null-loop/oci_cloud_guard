variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment in which to list resources."
  type        = string
}

variable "reporting_region" {
  description = "(Required) (Updatable) The reporting region"
  type        = string
}

variable "status" {
  description = "(Required) (Updatable) Status of Cloud Guard tenant"
  type        = string
}

variable "self_manage_resources" {
  description = "(Optional) (Updatable) Identifies if Oracle managed resources will be created by customers. If no value is specified false is the default."
  type        = bool
  default     = false
}
