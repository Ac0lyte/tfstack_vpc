# Terraform backend and state configuration.
# --------------------------------------------------
variable "terraform_stack"  {}
variable "aws_region"       {}
variable "aws_azs"          { type = "list" }
variable "cidr_prefix"      {}

# Default global tags to be applied to all resources
# --------------------------------------------------
variable "default_tags"  { type = "map" }


# Global resource type specific tags
# --------------------------------------------------
variable "vpc_tags"      { type = "map" }
variable "subnet_tags"   { type = "map" }
variable "igw_tags"      { type = "map" }
variable "rt_tags"       { type = "map" }
variable "sg_tags"       { type = "map" }
variable "dhcp_tags"     { type = "map" }


# Local tags for just this rail.
# --------------------------------------------------
locals {
    admin_tags = {
	Rail = "admin"
        Module = "admin"
    }
}
 
# --------------------------------------------------
