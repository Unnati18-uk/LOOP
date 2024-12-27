provider "aws" {
    region = "ap-southeast-2"
  
}

resource "aws_vpc" "my_vpc" {

    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "${var.name}-vpc"
      
    }
  
}
resource "aws_subnet" "subnets" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.0.${count.index}.0/24"
    count = 2

    tags = {
      Name = "${var.name}-subnet-${count.index}"
    }
  
}

resource "aws_instance" "myserver" {

    ami = "ami-003f5a76758516d1e"
    instance_type = "t2.micro"
    count = 4
    subnet_id = element(aws_subnet.subnets[*].id, count.index % length(aws_subnet.subnets) )


   #HOW LENGHTH FUNCTION
   # 0 % 2 = 0
   # 1 % 2 = 1
   # 2 % 2 = 0
   # 3 % 2 = 1
   # in that way it will create instances that is ===  output with 0 created instance in subnet0 and output with 1 created instance in subnet 1

    tags = {

Name = "${var.name}-instance-${count.index}"
    } 
  
}

variable "name" {
    default = "loop_count"
  
}

