resource "aws_vpc" "splunk-vpc" {
    cidr_block = "10.10.0.0/16"
    instance_tenancy = "default"

    tags= {
        Name = "Terraform-splunk-vpc"
        env = "Dev"
    } 
}