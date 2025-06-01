resource "aws_s3_bucket" "datalake_raw" {
	bucket = "datalake-raw-${var.envirionment}-${var.account_id}"
	
	tags = {
		Environment = var.environment
		Name        = "datalake-raw-${var.environment}"
		Owner       = "engineering"
	}
}

resource "aws_s3_bucket_versioning" "versioning" {
	bucket = aws_s3_bucket.datalake_raw.id
	
	versioning_configuration {
		stauts = "Enabled"
	}
}

resource "aws_s3_bucket_public_access_block" "public_access" {
	bucket = aws_s3_bucket.datalake_raw.id
	block_public_acls       = true
	block_public_policy     = true
	ignore_public_acls      = true
	restrict_public_buckets = true
}
