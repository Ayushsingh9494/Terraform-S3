provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.new_bucket_name

  tags = {
    Environment = var.environment
    Name        = "MyDemoBucket"
  }
}

resource "aws_s3_object" "hello_file" {
  bucket  = aws_s3_bucket.demo_bucket.id
  key     = "hello.txt"
  content = "Hello! My name is ${var.your_name}."
}

resource "aws_s3_bucket_public_access_block" "demo_bucket_access" {
  bucket = aws_s3_bucket.demo_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "demo_bucket_versioning" {
  bucket = aws_s3_bucket.demo_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "readme_file" {
  bucket  = aws_s3_bucket.demo_bucket.id
  key     = "readme.txt"
  content = "This is a README file for the bucket.\nEnvironment: ${var.environment}"
}

resource "aws_s3_object" "config_file" {
  bucket  = aws_s3_bucket.demo_bucket.id
  key     = "config/settings.txt"
  content = "App Configuration\nEnvironment: ${var.environment}\nRegion: ${var.region}"
}
