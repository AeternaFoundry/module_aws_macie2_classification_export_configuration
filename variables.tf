variable "macie2_classification_export_configurations" {
  description = <<EOT
Map of macie2_classification_export_configurations, attributes below
Required:
    - s3_destination (block):
        - bucket_name (required)
        - key_prefix (optional)
        - kms_key_arn (required)
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
    s3_destination = object({
      bucket_name = string
      key_prefix  = optional(string)
      kms_key_arn = string
    })
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

