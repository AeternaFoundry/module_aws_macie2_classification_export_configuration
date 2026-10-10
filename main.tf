resource "aws_macie2_classification_export_configuration" "macie2_classification_export_configurations" {
  for_each = var.macie2_classification_export_configurations

  region = each.value.region

  s3_destination {
    bucket_name = each.value.s3_destination.bucket_name
    key_prefix  = each.value.s3_destination.key_prefix
    kms_key_arn = each.value.s3_destination.kms_key_arn
  }
}

