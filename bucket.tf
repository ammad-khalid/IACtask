resource "aws_s3_bucket" "s3bucket-ammad"{
  bucket = "${var.bucket}"
/*  region = "${var.AWS_REGION}"
  acl    = "private"*/
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = "s3bucket-ammad"
  acl    = "private"
}
