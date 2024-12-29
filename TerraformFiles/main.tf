provider "aws" {
	region = "us-east-1"
	version = "~> 2.27"
}

resource "aws_iam_policy" "vaish_bucket_policy" {
	name = "list-buckets-policy12344"
	policy = file("./policy.iam")
}
