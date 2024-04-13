output "bucket_domain_name" {
  value       = aws_s3_bucket.s3_bucket.bucket_domain_name
  sensitive   = false
  description = "Nome de domínio do bucket S3"
}

output "bucket_region" {
  value       = aws_s3_bucket.s3_bucket.region
  sensitive   = false
  description = "Região do bucket"
}
