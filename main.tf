module "ec2" {
  source = "../terraform-aws-instance"
  ami_id = data.aws_ami.id.id
  sg_ids = var.sg_ids
  project = var.project_name
  environment = var.env
  tags = {
    Name = "${var.project_name}-${var.env}-${var.component}"
    component = var.component
  }
}