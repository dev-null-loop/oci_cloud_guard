variable "compartment_id" {
  description = "(Required) (Updatable) Compartment OCID of the data source"
  type        = string
}

variable "data_source_feed_provider" {
  description = "(Required) Type of data source feed provider (LoggingQuery)"
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) Data source display name"
  type        = string
}

variable "data_source_details" {
  description = "(Optional) (Updatable) Details specific to the data source type."
  type = object({
    data_source_feed_provider = string
    additional_entities_count = optional(number)
    description               = optional(string)
    interval_in_minutes       = optional(number)
    interval_in_seconds       = optional(number)
    logging_query_details = optional(object({
      logging_query_type = string
      key_entities_count = optional(number)
    }))
    logging_query_type = optional(string)
    operator           = optional(string)
    query              = optional(string)
    query_start_time = optional(object({
      start_policy_type = string
      query_start_time  = optional(string)
    }))
    regions = optional(list(string), [])
    scheduled_query_scope_details = optional(list(object({
      region        = optional(string)
      resource_ids  = optional(list(string), [])
      resource_type = optional(string)
    })), [])
    threshold = optional(number)
  })
  default = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`\n\nAvoid entering confidential information."
  type        = map(string)
  default     = {}
}

variable "status" {
  description = "(Optional) (Updatable) Enablement status of data source."
  type        = string
  default     = null
}
