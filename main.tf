resource "google_biglake_table" "biglake_tables" {
  for_each = var.biglake_tables

  name            = each.value.name
  database        = each.value.database
  deletion_policy = each.value.deletion_policy
  type            = each.value.type

  dynamic "hive_options" {
    for_each = each.value.hive_options != null ? [each.value.hive_options] : []
    content {
      parameters = hive_options.value.parameters
      dynamic "storage_descriptor" {
        for_each = hive_options.value.storage_descriptor != null ? [hive_options.value.storage_descriptor] : []
        content {
          input_format  = storage_descriptor.value.input_format
          location_uri  = storage_descriptor.value.location_uri
          output_format = storage_descriptor.value.output_format
          dynamic "serde_info" {
            for_each = storage_descriptor.value.serde_info != null ? [storage_descriptor.value.serde_info] : []
            content {
              serialization_lib = serde_info.value.serialization_lib
            }
          }
        }
      }
      table_type = hive_options.value.table_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

