# Here we define the main, or admin, VPC and it's subnets,
# default routing, security group, and DHCP options.

resource "aws_vpc" "admin" {
    cidr_block = "172.31.0.0/16"

    tags = "${merge(var.default_tags,
                    var.vpc_tags,
                    local.admin_tags,
                    map(
                        "Name", "admin"
                    )
    )}"
}
