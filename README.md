#terraform-aws-vpc-automation
Short description: Automating AWS VPC setup using terraform module.

#Architecture


#Setup

## Remote State Configuration

This project uses an S3 bucket with DynamoDB table for Terraform remote state storage and state locking. This ensures safe, consistent infrastructure operations across environments.

