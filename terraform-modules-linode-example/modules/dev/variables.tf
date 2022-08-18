variable "webserver_label" {
    description = "The name for the Web Server"
    default = "default-web"
}

variable "dbserver_label" {
    description = "The name for the Database Server"
    default = "default-db"
}

variable "image" {
    description = "Select the image that you prefer (required)"
}

variable "type" {
    description = "Select the type that you prefer for CPU instance to provision"
}

variable "engine_id" {
    description = "The Linode database engine version"
}

variable "region" {
    description = "The default Linode region to deploy the infrastructure"
}

variable "root_pass" {
    description = "The default root password for the Linode server"
}