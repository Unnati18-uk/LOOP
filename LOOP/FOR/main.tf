/*provider "aws" {
    region = "ap-southeast-2"
  
}

variable "name" {

    default = ["abc","cbz","xyy"]
}

resource "aws_instance" "myserver" {
   ami = "ami-003f5a76758516d1e"
   instance_type = "t2.micro"
   key_name = "sydneykay"


  
}

output "instance_name" {

    value = [for name in var.name : "instance-${name}"]
  
}*/

