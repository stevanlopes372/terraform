variable "aws_region" {
	description = "Região AWS onde os recursos serão criados"
	type        = string
	default     = "us-east-2"
}

variable "environment" {
	description = "Ambiente: dev, staging ou prod"
	type        = string
}

variable "account_id" {
	description = "ID conta AWS"
	type        = string
}
