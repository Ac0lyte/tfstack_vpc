# Terraform backend and state configuration.
# These should be kept in sync with the values in 
# backend_s3.tf - For use in other .tf files.
# --------------------------------------------------
variable "aws_region"       { default = "us-west-2" }
variable "aws_profile"      { default = "terraform" }
variable "terraform_stack"  { default = "vpc" }
variable "terraform_bucket" { default = "0xff-terraform" }

# --------------------------------------------------
# Default tags to be applied to all resources

locals {
    default_tags = {
        Project = "GalacticFunTimes"
	Stack   = "tf:${var.terraform_stack}"
    }

    vpc_tags = {
	Service = "infrastructure"
    }

    subnet_tags = {
	Service = "infrastructure"
    }

    igw_tags = {
	Service = "infrastructure"
    }

    rt_tags = {
	Service = "infrastructure"
    }

    sg_tags = {
	Service = "infrastructure"
    }

    dhcp_tags = {
	Service = "infrastructure"
    }


    aws_azs = [
        "${var.aws_region}a",
        "${var.aws_region}b",
        "${var.aws_region}c"
    ]

    admin_cidr_prefix = "172.31"

}

