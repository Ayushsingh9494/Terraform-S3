terraform{
    backend "s3" {
        bucket = "teraform-state-ayushsingh"
        key = "dev/terraform.tfstate"
        region = "ap-south-1"
        encrypt = true
    }
}