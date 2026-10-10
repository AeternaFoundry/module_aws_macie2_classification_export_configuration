output "macie2_classification_export_configurations_id" {
  description = "Map of id values across all macie2_classification_export_configurations, keyed the same as var.macie2_classification_export_configurations"
  value       = { for k, v in aws_macie2_classification_export_configuration.macie2_classification_export_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "macie2_classification_export_configurations_region" {
  description = "Map of region values across all macie2_classification_export_configurations, keyed the same as var.macie2_classification_export_configurations"
  value       = { for k, v in aws_macie2_classification_export_configuration.macie2_classification_export_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "macie2_classification_export_configurations_s3_destination" {
  description = "Map of s3_destination values across all macie2_classification_export_configurations, keyed the same as var.macie2_classification_export_configurations"
  value       = { for k, v in aws_macie2_classification_export_configuration.macie2_classification_export_configurations : k => one(v.s3_destination) if v.s3_destination != null && length(v.s3_destination) > 0 }
}

