variable "AWS_REGION" {
  default = "eu-west-2"
}

variable "PRIVATE_KEY_PATH" {
  default = "keypair"
}

variable "PUBLIC_KEY_PATH" {
  default = "keypair.pub"
}

variable "ubuntu" {
  default = "ubuntu"
}

variable "bucket" {
   default = "s3bucket-ammad"
}

/*variable "db_username" {
description = "rdsmaster"
}*/

variable "db_password" {
  default = "D+HUz3r2m$^5JzM&gp"
}

variable "AMI" {
/*  type = map(string)*/
  default = "ami-03dea29b0216a1e03"
    
  } 
    


provider "aws" {
    region = "${var.AWS_REGION}"
}
