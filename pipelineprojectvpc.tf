module "pipelineprojectvpc" {
    source = "./Modules"
    cidr = "10.1.0.0/16"
    vpc_name = "pipelineproject2"
    pub_sub = ["10.1.10.0/24","10.1.11.0/24"]
    aws_region = "ap-south-1"
}