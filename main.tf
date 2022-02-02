resource "aws_cloudtrail" "success" {
  name                          = "test"
  enable_logging                = true
  s3_bucket_name                = "test_bucket"
  enable_log_file_validation    = var.enable_log_file_validation
  is_multi_region_trail         = var.is_multi_region_trail
  include_global_service_events = true
  cloud_watch_logs_role_arn     = var.cloud_watch_logs_role_arn
  cloud_watch_logs_group_arn    = var.cloud_watch_logs_group_arn
  kms_key_id                    = var.kms_key_id
  is_organization_trail         = var.is_organization_trail

  event_selector {
    read_write_type           = "All"
    include_management_events = true
  }

}
