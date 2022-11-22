resource "aws_db_instance" "rdsinstance" {
/*region = "${var.AS_REGION}"*/
allocated_storage = 20
identifier = "dbinstance"
storage_type = "gp2"
engine = "postgres"
engine_version = "14.5"
instance_class = "db.t3.micro"
db_name = "dbname"
username = "rdsuser"
password = "${var.db_password}"
/*master_username = "${var.db_username}"
master_password = "${var.db_password}"*/
parameter_group_name = "default.postgres14"
db_subnet_group_name = "${aws_db_subnet_group.db-subnet.name}"
vpc_security_group_ids = ["${aws_security_group.db-access.id}"]
}
