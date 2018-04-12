resource "aws_subnet" "admin" {
    count = 3

    vpc_id            = "${aws_vpc.admin.id}"
    cidr_block        = "${var.cidr_prefix}.${count.index}.0/24"
    availability_zone = "${var.aws_azs[count.index]}"

    tags = "${merge(var.default_tags,
                    var.subnet_tags,
                    local.admin_tags,
                    map(
                        "Name", "admin_${count.index}"
                    )
    )}"
}
