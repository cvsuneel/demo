/*
resource "aws_db_instance" "db" {
   identifier = "mysql-db"
   engine = "mysql"
   engine_version = "5.7"
   instance_class = "db.t2.micro"
   username = "testdb"
   password = "testdb123"   #use vault
   storage_type = "gp2"
   allocated_storage = 20
   parameter_group_name = "default.mysql5.7"
   skip_final_snapshot = true
   #db_subnet_group_name        = aws_subnet.demosubnet2.id
   #vpc_security_group_ids      = [ aws_security_group.demosg.id ]

}
*/
#postgres sql creation
resource "aws_db_instance" "suneel" {
  identifier             = "suneel"
  name                   = "suneel"
  instance_class         = "db.t2.micro"
   storage_typev         =  20
  allocated_storage      = 20
  engine                 = "postgres"
  engine_version         = "12.5"
  skip_final_snapshot    = true
  publicly_accessible    = true
  vpc_security_group_ids = [aws_security_group.demosg.id]
  username               = "postgres"
  password               = "random_string.suneel-db-password.result"
}


