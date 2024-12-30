provider "aws" {
	region = "us-east-1"
}

variable "bucket_name" {
	description = "Enter the value you wish to provide as a bucket name"
}

resource "aws_s3_bucket" "bucket" {
	bucket = var.bucket_name
}

