provider "aws" {
	region = "us-east-1"
}

variable "bucket1" {
	description= "name of the bucket you wish to create"
}

variable "defBucketName" {
	default = "-vaishshubh"
}

resource "aws_s3_bucket" "bucket_name" {
	bucket = "${var.bucket1}${var.defBucketName}"
}
