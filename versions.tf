terraform {
  required_version = "~> 1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.61.0"
    }
  }

  backend "s3" {
    bucket = "myterraform56"
    key    = "docker-ecr/terraform-fkb56_docker-ecr-actions-workflow.tfstate"
    region = "eu-west-3"
    assume_role = {
      role_arn = "arn:aws:iam::794038241431:role/Terraform2"
    }
  }
}
