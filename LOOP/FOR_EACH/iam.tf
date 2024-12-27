/*provider "aws" {
  region = "ap-southeast-2"
}

variable "iam_users" {              
  default = [
    "unnati",
    "raha",
    "bhavi",
    "unnati"

  ]
}

# Create IAM Users
resource "aws_iam_user" "myusers" {
  for_each = toset(var.iam_users)
  name     = each.value
}

# Attach AdministratorAccess policy to each IAM user


resource "aws_iam_user_policy_attachment" "policy_attach" {
  for_each   = toset(var.iam_users)
  user       = aws_iam_user.myusers[each.value].name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# Create Login Profile (password) for each IAM user


resource "aws_iam_user_login_profile" "user_password" {
  for_each        = toset(var.iam_users)
  user            = aws_iam_user.myusers[each.value].name
  password_reset_required = true
 # Force the user to reset the password on first login
}
# Output the names of the IAM users

output "iam_user_names" {
  value = [for user in aws_iam_user.myusers : user.name]
 
}

variable "password" {
  default = "uvk1234"  
}
*/