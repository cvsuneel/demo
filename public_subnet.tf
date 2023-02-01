# Creating Public Subnet for EC2 instance
resource "aws_subnet" "demosubnet" {
  vpc_id                  = "${aws_vpc.demovpc.id}"
  cidr_block             = "${var.subnet_cidr}"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = true
tags = {
    Name = "Public Subnet"
  }
}