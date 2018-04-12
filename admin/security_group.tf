resource "aws_default_security_group" "admin_default" {
    vpc_id = "${aws_vpc.admin.id}"
    tags   = "${merge(
                  var.default_tags,
                  var.subnet_tags,
                  local.admin_tags,
                  map(
                      "Name", "admin_default"
                  )
    )}"

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

