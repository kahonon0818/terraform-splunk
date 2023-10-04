## Ec2 instance 

resource "aws_instance" "ec2-demo" {
    ami = "ami-0bb4c991fa89d4b9b"
    vpc_security_group_ids = [aws_security_group.splunk-sg.id]
    instance_type = "t2.small"
    key_name = "ec2-demo"
    subnet_id = aws_subnet.public_subnet1.id
    
    root_block_device {
    volume_size = 25   # 25 GB root volume
  }

    user_data = file("splunk.sh")
    tags={
        Name = "Terraform instance"
        env = "Dev"
    }

}