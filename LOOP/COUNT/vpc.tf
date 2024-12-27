# FOR CREATING MULTIPLE SUBNETS OF VPS USING COUNT LOOP



/*provider "aws" {
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
    count = 4

    tags = {
      Name = "${var.name}-subnet-${count.index}"
    }
  
}

variable "name" {
    default = "loop_count"
  
}

output "subnet_id0" {
 value = aws_subnet.subnets[0].id
  
}
output "subnet_id1" {
 value = aws_subnet.subnets[1].id
  
}
output "subnet_id2" {
 value = aws_subnet.subnets[2].id
  
}
output "subnet_id3" {
 value = aws_subnet.subnets[3].id
  
}*/