provider "aws" {
  region = "eu-west-1"
}

#######################
# S3 Bucket
#######################
resource "aws_s3_bucket" "mi_bucket" {
  bucket = "bucket-fran-terra-123456"  
}

#######################
# EC2 Instance
#######################
resource "aws_instance" "linux_server" {
  ami           = "ami-08b6a2983df6e9e25"  
  instance_type = "t3.micro"               
  key_name      = "terraform-key"

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install nginx1 -y
              sudo systemctl enable nginx
              sudo systemctl start nginx
              EOF

  tags = {
    Name = "terraform-linux-demo"
  }
}

#######################
# Outputs
#######################
output "ec2_public_ip" {
  value = aws_instance.linux_server.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.mi_bucket.bucket
}

