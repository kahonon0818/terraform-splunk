output "public-ip" {
    value = aws_instance.ec2-demo.public_ip
}

# Output the ARN of the DynamoDB table for reference

output "dynamodb_table_arn" {
    value = aws_dynamodb_table.terraform_lock1.arn
}
   

output "vpc_id" {
  description = "splunk-vpc"
  value = aws_vpc.splunk-vpc.id
}


output "splunk_sg_id" {
  description = "splunk-sg"
  value = aws_security_group.splunk-sg.id

} 