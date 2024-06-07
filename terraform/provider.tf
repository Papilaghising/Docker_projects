provider "aws" {
    region = var.region
    default_tags {
        tags ={
        silo = "intern"
        project = "docker-2"
        terraform = true
        owner = "papila.ghising"
        }
    }
}