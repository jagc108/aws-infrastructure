terraform {
  required_version = ">= 1.11.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.28"
    }
  }

  backend "s3" {
    bucket       = "terraform-state"
    key          = "env/test/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
