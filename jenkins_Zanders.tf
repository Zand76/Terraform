provider "aws" {
access_key = "AKIAQDYR6WWMY2YJZUXA"
secret_key = "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"
region = "us-east-1"
}

# Resource Configuration for AWS
resource "aws_instance" "myserver" {
    ami = "ami-03cfc832e42b2422c"
    instance_type = "t3a.medium"
    key_name = "KP-Pub-01"
    vpc_security_group_ids = ["sg-03ad989e6d61366cd"]
    tags = {
    name = "helloworld_terraform"
    }
} 