resource "aws_s3_bucket" "testbucket" {
  bucket = "awseksbackup"

  tags = {
    "Name" : "My bucket"
    "Env" : "Dev",
    "Video" : "Cloudfirstdemo"
  }
}