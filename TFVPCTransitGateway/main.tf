provider "aws" {
	region = "us-east-1"
}

resource "aws_vpc" "vpc1" {
	cidr_block = "10.0.0.0/16"
	enable_dns_support = true
	enable_dns_hostnames = true
}

resource "aws_vpc" "vpc2" {
	cidr_block = "10.1.0.0/16"
	enable_dns_support = true
        enable_dns_hostnames = true

}

resource "aws_subnet" "subnet_1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "subnet_2" {
  vpc_id     = aws_vpc.vpc2.id
  cidr_block = "10.1.1.0/24"
}

#setup transit gateway

resource "aws_ec2_transit_gateway" "example" {
	description = "My transit Gateway"
}

resource "aws_ec2_transit_gateway_vpc_attachment" "attachment1" {
	subnet_ids = [aws_subnet.subnet_1.id]
	transit_gateway_id = aws_ec2_transit_gateway.example.id
	vpc_id = aws_vpc.vpc1.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "attachment2" {
	subnet_ids = [aws_subnet.subnet_2.id]
	transit_gateway_id = aws_ec2_transit_gateway.example.id
	vpc_id = aws_vpc.vpc2.id
}

#update route tables for transit gateway

resource "aws_route" "routetoVpc1" {
	transit_gateway_id = aws_ec2_transit_gateway.example.id
	route_table_id = aws_vpc.vpc2.main_route_table_id
	destination_cidr_block = "10.0.0.0/16"
}
