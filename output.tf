output "bucket_name"{
    description = "the name of the s3 bucket that was created"
    value = aws_s3_bucket.demo_bucket.bucket
}

output "bucket_arn"{
    description = "the unique the amazon id of the bucket"
    value = aws_s3_bucket.demo_bucket.arn
}

output "bucket_region"{
    description = "where readme file lives in s3"
    value = "s3://${aws_s3_bucket.demo_bucket.bucket}/config/settings.txt"
}

output "state_file_location"{
    description = "the s3 location where the terraform state file is stored"
    value = "s3://${aws_s3_bucket.demo_bucket.bucket}/terraform.tfstate"
}