instance_type                 = "t2.micro"
sg_id                         = ["sg-0b58f156501701642"]    
subnet_id                     = "subnet-0f97b0bb45cdeb3b7"
iam_instance_profile          = "papila-instance-profile"
ami_id                        = "ami-0e001c9271cf7f3b9"   
region                        = "us-east-1"
repository_read_write_access_arns = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"]