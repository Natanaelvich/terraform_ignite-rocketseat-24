data "aws_s3_bucket" "s3_bucket" {
    bucket = "natanael-bucket-iac-${terraform.workspace}"
}