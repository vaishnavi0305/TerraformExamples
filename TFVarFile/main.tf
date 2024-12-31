provider "aws" {
	region = "us-east-1"
	version = "~> 2.27"
}

variable "bucket1" {
	description = "enter the bucket name you want to create"
}

variable "defbucketvar" {
	default = "-vaishbucket"
}

resource "aws_s3_bucket" "bucket" {
	bucket = "${var.bucket1}${var.defbucketvar}"
}


