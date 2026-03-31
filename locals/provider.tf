terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.33.0"  #terraform aws provider version
    }
  }

  backend "s3" {
    bucket         = "remote-state-nemani"
    key            = "locals-demo.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }

}

# Configure the AWS Provider

provider "aws" {
  region = "us-east-1"
}

