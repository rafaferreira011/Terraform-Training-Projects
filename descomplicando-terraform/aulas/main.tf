#terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 4.0"
#
#    }
#  }
#}

provider "aws" {
  region  = "us-east-1"
  version = "~> 4.0"
}

terraform {
 backend "s3" {
  bucket  = "mybucketterraformaws"
  key     = "terraform-test.tfstate"
  region  = "us-east-1"
  encrypt = true
  }
}
