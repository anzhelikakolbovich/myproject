terraform {
  backend "s3" {
    bucket         = "project-anzhelikakolbovich"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}