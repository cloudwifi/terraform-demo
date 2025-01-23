# variables.tf

# AWS Region
variable "region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

# VPC Tags
variable "vpc_tags" {
  description = "Tags to assign to the VPC"
  default     = {
    Name = "devops-vpc"
  }
}

# IAM User Name
variable "iam_user_name" {
  description = "The name of the IAM user"
  default     = "devops-user"
}

# EC2 Instance AMI ID
variable "ec2_ami" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-0df8c184d5f6ae949"
}

# EC2 Instance Type
variable "ec2_instance_type" {
  description = "The EC2 instance type"
  default     = "t2.micro"
}

# EC2 Subnet ID
variable "ec2_subnet_id" {
  description = "The Subnet ID for the EC2 instance"
  default     = "subnet-083915b5e09c63162"
}

# EC2 Tags
variable "ec2_tags" {
  description = "Tags for the EC2 instance"
  default     = {
    Name = "devops-Server"
  }
}

# S3 Bucket Name
variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  default     = "devops-bucket-1234456"
}

# RDS Database Identifier
variable "rds_db_identifier" {
  description = "The RDS database identifier"
  default     = "devops-db"
}

# RDS Database Engine
variable "rds_engine" {
  description = "The RDS database engine"
  default     = "mysql"
}

# RDS Engine Version
variable "rds_engine_version" {
  description = "The version of the RDS database engine"
  default     = "8.0"
}

# RDS Instance Class
variable "rds_instance_class" {
  description = "The instance class for the RDS database"
  default     = "db.t3.micro"
}

# RDS Allocated Storage
variable "rds_allocated_storage" {
  description = "The allocated storage for the RDS database (in GB)"
  default     = 20
}

# RDS Username
variable "rds_username" {
  description = "The master username for the RDS database"
  default     = "admin"
}

# RDS Password
variable "rds_password" {
  description = "The master password for the RDS database"
  default     = "admin999"
}

# Skip Final Snapshot for RDS
variable "skip_final_snapshot" {
  description = "Whether to skip the final snapshot when the RDS instance is deleted"
  default     = true
}
