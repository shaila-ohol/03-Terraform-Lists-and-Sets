variable "names" {
  default = ["ravs", "sats", "ranga", "tom", "jane"]
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "sushil_test_iam_users" {
  #count = length(var.names)
  #name = var.names[count.index]
  for_each = toset(var.names)
  name = each.value
}
