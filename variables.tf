variable "new_bucket_name" {
    description = "name of new s3 bucket terraform will create"
    type = string
    default = "my-demo-bucket-ayushsingh-2026"
}

variable "region" {
    description = "aws region to create sources in"
    type = string
    default = "ap-south-1"
}

variable "environment" {
    description = "environment label {dev, staging, production}"
    type = string
    default = "dev"
}

variable "your_name" {
    description = "your name"
    type = string
    default = "ayush"
}