# Creating EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami           = "ami-04bad3c587fe60d89"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.demosg.id ]
  subnet_id = aws_subnet.demosubnet.id
  associate_public_ip_address = true
tags = {
    Name = "My Public Instance"
  }
}