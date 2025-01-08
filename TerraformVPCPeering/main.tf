provider "aws" {
	region = "us-east-1"
}

resource "aws_vpc" "vpc_a" {
	cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "vpc_b" {
	cidr_block = "10.1.0.0/16"
}

resource "aws_vpc_peering_connection" "vpc_peer" {
	vpc_id = aws_vpc.vpc_a.id
	peer_vpc_id = aws_vpc.vpc_b.id
	auto_accept = true
	tags = {
		Name = "aws-vpc-peer"
	}
}
