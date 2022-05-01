module "pipelineprojectvpc" {
    source = "./Modules"
    cidr = var.cidr
    vpc_name = var.vpc_name
}