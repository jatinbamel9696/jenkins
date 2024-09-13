provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}


terraform {
  backend "s3" {
    bucket         = "j3-test-001 "
    key            = "terraform.tfstate"  # e.g., environment or project-specific
    region         = "us-east-1"
    encrypt        = true                         # Encrypt the state file
    #dynamodb_table = "your-dynamodb-table-name"   # Optional, for state locking
  }
}
