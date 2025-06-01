output "bucket_name" {
	description = "Nome do bucket criado"
	value       = aws_s3_bucket.datalake_raw.bucket
}

output "bucket_arn" {
	description = "ARN do bucket criado"
	value       = aws_s3_bucket.datalake_raw.arn
}
