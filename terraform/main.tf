provider "aws" {
    region="eu-west-2"
}

variable "name" {
    type = string
    default = "jenkinsserver"
    description = "Jenkins Server"
}

resource "aws_instance" "basic_devops_jenkins"{
    ami = "ami-0015a39e4b7c0966f"
    instance_type = "t2.micro"
    key_name = "ybkey"

    tags = {
        Name = "${var.name}"
    }

}