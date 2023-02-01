# Creating Private subnet 
 resource "aws_subnet" "demosubnet2" {
  vpc_id                  = "${aws_vpc.demovpc.id}"
  cidr_block             = "${var.subnet1_cidr}"
  availability_zone = "us-west-2b"
tags = {
    Name = "Private Subnet"
  }
}
