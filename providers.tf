terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
  default_tags {
    tags = {
      Project     = var.project_name
      Environment = var.environment
      Owner       = var.owner
    }
  }
}
