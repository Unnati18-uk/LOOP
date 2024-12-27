/*provider "aws" {
 region = "ap-southeast-2"
  
}

variable "s3_buckets" {

    default = {
        dev    =    "bucket-unnati"
        test   =    "bucket-virat"
        prod   =    "bucket-kohli"
    }
  
}

resource "aws_s3_bucket" "my_bucket" {

    for_each = var.s3_buckets
    bucket = each.value
    tags = {
      Name = each.value
      Env =   each.key
    }
    
  
}

output "buckets" {

    value = [for bucket in aws_s3_bucket.my_bucket : bucket.bucket]
  
}*/