provider "aws" {
  region = "ap-south-1"
}
terraform {
  backend "s3" {
    bucket         = "sanket-tfstate-bucket-26"
    key            = "3tier/prod/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile =  true
    encrypt        = true
  }
}
