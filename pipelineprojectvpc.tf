module "pipelineprojectvpc" {
    source = "./Modules"
    cidr = var.cidr
    vpc_name = var.vpc_name
    pub_sub = var.pub_sub
    aws_region = var.aws_region
}