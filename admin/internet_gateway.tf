resource "aws_internet_gateway" "admin" {

    vpc_id            = "${aws_vpc.admin.id}"

    tags = "${merge(var.default_tags,
                    var.igw_tags,
                    local.admin_tags,
                    map(
                        "Name", "admin"
                    )
    )}"
}
