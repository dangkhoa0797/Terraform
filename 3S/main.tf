# Configure the AWS provider
provider "aws" {
  region     = "us-east-2"
  access_key = " "
  secret_key = " "
}

# Create a S3 bucket
resource "aws_s3_bucket" "terraform_damian-bucket" {
  bucket		  = "${var.bucket_name}"
  
  versioning {
    enabled = true
  }  
  
  lifecycle {
    prevent_destroy = true
  }
}