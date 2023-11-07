terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket = "tf-state-eks-2023"
    key    = "infra"
    region = "eu-west-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.47"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
  }
}
