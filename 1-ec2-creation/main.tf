variable "aws_access_key" {}

variable "aws_secret_key" {}

provider "aws" {
   region     = "ap-south-1"
   access_key = "${var.aws_access_key}"
   secret_key = "${var.aws_secret_key}"
   }

resource "aws_instance" "test" {
   ami 		  =      "ami-1780a878"
   instance_type  =      "t2.micro"
   availability_zone =   "ap-south-1b"
   } 

   
output "az" {
   value = "${aws_instance.test.availability_zone}"
   }


output "ids" {
   value = "${aws_instance.test.id}" 
   }

output "publicip" {
   value = "${aws_instance.test.public_ip}"
   } 
