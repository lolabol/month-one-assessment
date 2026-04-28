variable "region" {
  default = "us-east-1"
}

variable "key_name" {}

variable "my_ip" {}

variable "bastion_instance_type" {
  default = "t3.micro"
}

variable "web_instance_type" {
  default = "t3.micro"
}

variable "db_instance_type" {
  default = "t3.small"
}


