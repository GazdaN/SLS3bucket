resource "aws_s3_bucket" "my_bucket" {
  bucket_prefix = var.bucket_prefix

  tags = {
    Name        = "My S3 Bucket"
    Environment = "Dev"
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

# Output the VPC ID
output "vpc_id" {
  value = aws_vpc.main.id
}
