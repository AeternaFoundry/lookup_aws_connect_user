variable "connect_user_lookup" {
  description = <<EOT
Map of connect_user_lookup, attributes below
Required:
    - instance_id
Optional:
    - name
    - region
    - tags
    - user_id
EOT

  type = map(object({
    instance_id = string
    name        = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    user_id     = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

