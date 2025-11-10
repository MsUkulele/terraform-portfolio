#terraform-aws-vpc-automation
Short description: Automating AWS VPC setup using terraform module.

#Architecture
- Remote backend
- dev environment that uses a local module for a vpc and 2 subnets

## Remote State Configuration

This project uses an S3 bucket with DynamoDB table for Terraform remote state storage and state locking. This ensures safe, consistent infrastructure operations across environments.

Benefits:
- A safe workflow
- Professional setup
- Future-proof design

## Deployment Verification

- Applied VPC and public subnet infrastructure using Terraform with remote state and locking
- Verified created resources in AWS VPC console
- Ensured correct CIDR ranges and subnet configuration

## IAM Module

- Reusable IAM role module supporting configurable trust relationships
- Supports least-privilege IAM policies
- Demonstrates secure IAM automation with Terraform modules
