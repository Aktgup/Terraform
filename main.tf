terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
variable "iam_user_name_prefix" {
  type    = string
  default = "my_iam_user"
}
# configure the AWS Provider
provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  access_key = "AKIAXDBJK4VEGYZ7YNNB"
  secret_key = "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"

}
#IAM User

resource "aws_iam_user" "my_iam_users" {
  count = 1
  name  = "${var.iam_user_name_prefix}_${count.index}"


}