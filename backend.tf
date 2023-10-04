terraform {
    backend "s3" {
        bucket = "divin-splunk"
         key = "terraform-splunk/terraform.tfstate"
         region = "us-east-1"
         encrypt = true

  }
}

resource "aws_dynamodb_table" "terraform_lock1" {
    name           = "terraform-state-lock1"
    billing_mode   = "PAY_PER_REQUEST"  # You can also use "PROVISIONED" if needed
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
  }
 
   ttl {
    attribute_name = "LockID"
    enabled = true
}
}
