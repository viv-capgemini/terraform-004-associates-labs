terraform {
  backend "s3" {
    bucket = "viv-terraform-state-bucket"
    key    = "lab_06_making_code_dynamic_and_reusable/terraform.tfstate"
    region = "eu-west-2"
    use_lockfile = true
  }
  required_version = "1.12.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}