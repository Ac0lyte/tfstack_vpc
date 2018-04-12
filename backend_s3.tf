# * terraform.backend: configuration cannot contain interpolations
# 
# The backend configuration is loaded by Terraform extremely early, before
# the core of Terraform can be initialized. This is necessary because the backend
# dictates the behavior of that core. The core is what handles interpolation
# processing. Because of this, interpolations cannot be used in backend
# configuration.
# 
# If you'd like to parameterize backend configuration, we recommend using
# partial configuration with the "-backend-config" flag to "terraform init".
# 

terraform {
  backend "s3" {
    bucket = "0xff-terraform"
    key    = "vpc"
    region = "us-west-2"
  }
}

data "terraform_remote_state" "terraform_stack" {
  backend = "s3"
  config {
    bucket = "0xff-terraform"
    key    = "vpc/terraform.tfstate"
    region = "us-west-2"
  }
}

