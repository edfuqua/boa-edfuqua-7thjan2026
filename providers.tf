terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
}
#terraform tfstate file remote backend section
backend "s3"{
    bucket = "edfuqua-jan07-terramform"
    key = "dev/edfuqua/terramform.tfstate"
    encrypt = true
    region ="us-west-1"
    dynamodb_table ="edfuqua-locking-table1"
}
}
provider "aws" {
  # Configuration options
  region = "us-east-1" # additional changes
}
