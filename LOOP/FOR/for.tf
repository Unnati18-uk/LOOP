provider "aws" {
    region = "ap-southeast-2"
  
}
 variable "num" {

    default = [1,2,3,4,5,6,7,8]
   
 }

 output "odd_number" {

    value = [for num in var.num : num if num % 2 != 0]
   
 }