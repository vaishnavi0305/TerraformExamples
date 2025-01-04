terraform {
	backend "s3" {
		bucket = "vaishnavi-state-bucket"
		key = "project.state"
		region = "us-east-1"
	}
}
