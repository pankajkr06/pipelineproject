module "pipelineprojectvpc" {
    source = "./Modules"
    cidr_block = var.cidr
    Name = var.vpc_name
}