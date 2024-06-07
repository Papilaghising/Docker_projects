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
  scanning_configuration = {
    rules = [
      {
        scan_frequency = "SCAN_ON_PUSH"
        repository_filter = {
          filter      = "*"
          filter_type = "WILDCARD"
        }
      }]
  }
  repository_read_write_access_arns = var.repository_read_write_access_arns
  repository_lifecycle_policy = jsonencode({
    rules = [
      {
        rulePriority = 1,
        description  = "Keep last 30 images",
        selection = {
          tagStatus     = "tagged",
          tagPrefixList = ["v"],
          countType     = "imageCountMoreThan",
          countNumber   = 30
        },
        action = {
          type = "expire"
        }
      }
    ]
  })
}

