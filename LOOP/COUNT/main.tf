# FOR CREATING MULTIPLE INSTANCES OF SAME TYPE USING COUNT LOOP


/*provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "myserver" {
  ami-003f5a76758516d1e
  ami = ""
  instance_type = "t2.micro"
  key_name = "sydneykay"
  count = 2

  tags = {
    Name = "loop_instance-${count.index}"
  }

}*/

---------------------------------------------------------------------------------------

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "myserver" {
  ami = "ami-003f5a76758516d1e"
  instance_type = "t2.micro"
  key_name = "sydneykay"
  count = 2

  tags = {
    Name = "instance-${count.index}"
  }
}



output "instance_ip" {
  value = aws_instance.myserver[*].public_ip 
}

