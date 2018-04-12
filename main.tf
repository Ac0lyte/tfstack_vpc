module "admin" {
    source = "./admin"

    aws_region       = "${var.aws_region}"
    aws_azs          = "${local.aws_azs}"
    cidr_prefix      = "${local.admin_cidr_prefix}"

    terraform_stack  = "${var.terraform_stack}"
    default_tags     = "${local.default_tags}"
    vpc_tags         = "${local.vpc_tags}"
    subnet_tags      = "${local.subnet_tags}"
    igw_tags         = "${local.igw_tags}"
    rt_tags          = "${local.rt_tags}"
    sg_tags          = "${local.sg_tags}"
    dhcp_tags        = "${local.dhcp_tags}"
}
