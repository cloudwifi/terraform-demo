provider "aws" {
  region = var.region
}

# VPC Configuration
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  
  tags = var.vpc_tags
}

# IAM User
resource "aws_iam_user" "devuser" {
  name = var.iam_user_name
}

# EC2 Instance (Amazon Linux)
resource "aws_instance" "web" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  subnet_id     = var.ec2_subnet_id

  tags = var.ec2_tags
}

# S3 Bucket
resource "aws_s3_bucket" "data_bucket" {
  bucket = var.s3_bucket_name
}

# RDS MySQL Instance
resource "aws_db_instance" "default" {
  identifier     = var.rds_db_identifier
  engine         = var.rds_engine
  engine_version = var.rds_engine_version
  instance_class = var.rds_instance_class
  
  username = var.rds_username
  password = var.rds_password
  
  allocated_storage = var.rds_allocated_storage
  skip_final_snapshot = var.skip_final_snapshot
}
