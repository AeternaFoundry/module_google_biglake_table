output "biglake_tables_id" {
  description = "Map of id values across all biglake_tables, keyed the same as var.biglake_tables except keys with no id are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "biglake_tables_create_time" {
  description = "Map of create_time values across all biglake_tables, keyed the same as var.biglake_tables except keys with no create_time are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "biglake_tables_database" {
  description = "Map of database values across all biglake_tables, keyed the same as var.biglake_tables except keys with no database are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => v.database if v.database != null && length(v.database) > 0 }
}
output "biglake_tables_delete_time" {
  description = "Map of delete_time values across all biglake_tables, keyed the same as var.biglake_tables except keys with no delete_time are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => v.delete_time if v.delete_time != null && length(v.delete_time) > 0 }
}
output "biglake_tables_deletion_policy" {
  description = "Map of deletion_policy values across all biglake_tables, keyed the same as var.biglake_tables except keys with no deletion_policy are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "biglake_tables_etag" {
  description = "Map of etag values across all biglake_tables, keyed the same as var.biglake_tables except keys with no etag are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "biglake_tables_expire_time" {
  description = "Map of expire_time values across all biglake_tables, keyed the same as var.biglake_tables except keys with no expire_time are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => v.expire_time if v.expire_time != null && length(v.expire_time) > 0 }
}
output "biglake_tables_hive_options" {
  description = "Map of hive_options values across all biglake_tables, keyed the same as var.biglake_tables except keys with no hive_options are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => one(v.hive_options) if v.hive_options != null && length(v.hive_options) > 0 }
}
output "biglake_tables_name" {
  description = "Map of name values across all biglake_tables, keyed the same as var.biglake_tables except keys with no name are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "biglake_tables_type" {
  description = "Map of type values across all biglake_tables, keyed the same as var.biglake_tables except keys with no type are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => v.type if v.type != null && length(v.type) > 0 }
}
output "biglake_tables_update_time" {
  description = "Map of update_time values across all biglake_tables, keyed the same as var.biglake_tables except keys with no update_time are omitted"
  value       = { for k, v in google_biglake_table.biglake_tables : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

