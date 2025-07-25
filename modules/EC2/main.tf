module "ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"

  name                      = var.ec2_name
  ami                       = var.ec2_ami
  instance_type             = var.ec2_instance_type
  subnet_id                 = module.vpc.public_subnets[0]
  vpc_security_group_ids    = [module.vpc.default_security_group_id]
  key_name                  = var.ec2_key_name
  tags = {
    Environment = var.environment
  }
}
