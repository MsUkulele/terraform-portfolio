variable "name" {
  description = "Name of the IAM role"
  type        = string
}

variable "trusted_service" {
  description = "AWS service that can assume this role"
  type        = string
  default     = "ec2.amazonaws.com"
}

variable "policy_statements" {
  description = "IAM policy statements"
  type        = list(any)
}
