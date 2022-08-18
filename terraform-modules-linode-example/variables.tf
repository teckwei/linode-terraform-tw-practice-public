variable "root_pass" {
    description = "The default root password for the Linode server"
}

variable "image" {
    description = "Select the image that you prefer (required)"
}

variable "engine_id" {
    description = "The Linode database engine version"
}

variable "region" {
    description = "The default Linode region to deploy the infrastructure"
}

variable "type" {
    description = "Select the type that you prefer for CPU instance to provision"
}