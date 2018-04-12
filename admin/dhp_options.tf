resource "aws_default_vpc_dhcp_options" "default" {
    tags = "${merge(var.default_tags,
                    var.dhcp_tags,
                    local.admin_tags,
                    map(
                        "Name", "Default DHCP Option Set"
                    )
    )}"
}
