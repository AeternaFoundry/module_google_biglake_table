variable "biglake_tables" {
  description = <<EOT
Map of biglake_tables, attributes below
Required:
    - name
Optional:
    - database
    - deletion_policy
    - type
    - hive_options (block):
        - parameters (optional)
        - storage_descriptor (optional, block):
            - input_format (optional)
            - location_uri (optional)
            - output_format (optional)
            - serde_info (optional, block):
                - serialization_lib (optional)
        - table_type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    database        = optional(string)
    deletion_policy = optional(string)
    type            = optional(string)
    hive_options = optional(object({
      parameters = optional(map(string))
      storage_descriptor = optional(object({
        input_format  = optional(string)
        location_uri  = optional(string)
        output_format = optional(string)
        serde_info = optional(object({
          serialization_lib = optional(string)
        }))
      }))
      table_type = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

