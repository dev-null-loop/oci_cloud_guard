# output "status" {
#   description = "Status of Cloud Guard Tenant"
#   value       = data.oci_cloud_guard_cloud_guard_configuration.this.status
# }

# output "existing_detector_recipes" {
#   value = [for i in data.oci_cloud_guard_detector_recipes.existing.detector_recipe_collection[0].items : i.display_name if i.owner == "ORACLE"]
# }

# output "existing_responder_recipes" {
#   value = data.oci_cloud_guard_responder_recipes.existing.responder_recipe_collection[0].items.*.display_name
# }

output "id" {
  description = "Unique identifier that is immutable on creation."
  value       = oci_cloud_guard_target.this.id
}
