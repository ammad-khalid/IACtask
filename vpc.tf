resource "aws_vpc" "prod-vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
   /* enable_classiclink = "false"*/
    instance_tenancy = "default"

    tags = {
        Name = "prod-vpc"
    }
}

resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true" 
    availability_zone = "eu-west-2a"

    tags = {
        Name = "prod-subnet-public-1"
}
}
resource "aws_subnet" "prod-subnet-priv-1" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true" 
    availability_zone = "eu-west-2b"

    tags = {
        Name = "prod-subnet-priv-1"
}

}
resource "aws_db_subnet_group" "db-subnet" {
    name = "db-subnet-group"
    subnet_ids = ["${aws_subnet.prod-subnet-public-1.id}","${aws_subnet.prod-subnet-priv-1.id}"]
    
    }

