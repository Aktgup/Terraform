resource "aws_s3_bucket" "testbucket1" {
  bucket = "awseksbackup-S3-Bucket-0715"

  tags = {
    "Name" : "My bucket"
    "Env" : "Dev",
    "Video" : "Cloudfirstdemo"
  }
}