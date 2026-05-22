resource "oci_cloud_guard_data_source" "this" {
  compartment_id            = var.compartment_id
  data_source_feed_provider = var.data_source_feed_provider
  display_name              = var.display_name

  defined_tags  = var.defined_tags
  freeform_tags = var.freeform_tags
  status        = var.status

  dynamic "data_source_details" {
    for_each = var.data_source_details == null ? [] : [var.data_source_details]
    content {
      data_source_feed_provider = data_source_details.value.data_source_feed_provider
      additional_entities_count = data_source_details.value.additional_entities_count
      description               = data_source_details.value.description
      interval_in_minutes       = data_source_details.value.interval_in_minutes
      interval_in_seconds       = data_source_details.value.interval_in_seconds
      logging_query_type        = data_source_details.value.logging_query_type
      operator                  = data_source_details.value.operator
      query                     = data_source_details.value.query
      regions                   = data_source_details.value.regions
      threshold                 = data_source_details.value.threshold

      dynamic "logging_query_details" {
        for_each = data_source_details.value.logging_query_details == null ? [] : [data_source_details.value.logging_query_details]
        content {
          logging_query_type = logging_query_details.value.logging_query_type
          key_entities_count = logging_query_details.value.key_entities_count
        }
      }

      dynamic "query_start_time" {
        for_each = data_source_details.value.query_start_time == null ? [] : [data_source_details.value.query_start_time]
        content {
          start_policy_type = query_start_time.value.start_policy_type
          query_start_time  = query_start_time.value.query_start_time
        }
      }

      dynamic "scheduled_query_scope_details" {
        for_each = data_source_details.value.scheduled_query_scope_details
        content {
          region        = scheduled_query_scope_details.value.region
          resource_ids  = scheduled_query_scope_details.value.resource_ids
          resource_type = scheduled_query_scope_details.value.resource_type
        }
      }
    }
  }
}
