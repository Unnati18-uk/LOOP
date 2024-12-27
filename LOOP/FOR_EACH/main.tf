/*provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "myserver" {
 for_each = var.instance_type 
 ami = "ami-001f2488b35ca8aad" 
 instance_type = each.value
 key_name = "sydneykay"

 tags = {
   Name = "instance-${each.key}"
 }
 
}

variable "instance_type" {

    default = {
        small = "t2.small"
        medium = "t2.medium"
        micro  = "t2.micro"
    }
  
}
output "instance_public_ips" {
  value = { for key, value in aws_instance.myserver : key => value.public_ip }
  
}
*/