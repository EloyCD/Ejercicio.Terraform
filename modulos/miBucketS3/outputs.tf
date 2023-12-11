output "bucket_name_output" {
  description = "Nombre del bucket S3 creado"
  value       = aws_s3_bucket.example.bucket
}

output "bucket_region" {
  description = "Región del bucket S3 creado"
  value       = aws_s3_bucket.example.region
}

