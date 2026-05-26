data "ami_id" "id" {
    owners = ["973714476881"]

    filters {
        name = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }

    filter {
        name = "architecture"
        values = ["x86_64"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    filter {
        name = "root-device-type"
        values = "ebs"
    }
}