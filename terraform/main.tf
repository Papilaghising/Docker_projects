module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "papila-instance"
  vpc_security_group_ids      = var.sg_id
  subnet_id                   = var.subnet_id
  iam_instance_profile        = var.iam_instance_profile
  instance_type               = var.instance_type
  monitoring                  = true
  associate_public_ip_address = true
}

module "ecr" {
  source = "terraform-aws-modules/ecr/aws"

  repository_name = "ghising-ecr"

  repository_read_write_access_arns = var.repository_read_write_access_arns
}