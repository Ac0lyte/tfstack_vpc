resource "aws_default_route_table" "admin" {
    default_route_table_id = "${aws_vpc.admin.default_route_table_id}"

    tags = "${merge(var.default_tags,
                    var.rt_tags,
                    local.admin_tags,
                    map(
                        "Name", "admin"
                    )
    )}"
}


resource "aws_route" "default_v4" {
    route_table_id         = "${aws_default_route_table.admin.id}"
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = "${aws_internet_gateway.admin.id}"
}

resource "aws_route" "default_v6" {
    route_table_id              = "${aws_default_route_table.admin.id}"
    destination_ipv6_cidr_block = "::/0"
    gateway_id                  = "${aws_internet_gateway.admin.id}"
}
