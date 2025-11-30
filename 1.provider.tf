provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket         = "ansible-terraform-automation-bucket"
    key            = "Ansible.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "-terraform-locks"
    encrypt        = true
  }
}