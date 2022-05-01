# Terraform Block
terraform {
  required_version = "~> 1.0" 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = "~> 3.0"
    }    
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }            
  }
  # Adding Backend as S3 for Remote State Storage
  #backend "s3" {} 
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "Prod"
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/

# Create Random Pet Resource
resource "random_pet" "this" {
  length = 2
}

