variable "config_profile" {
    description = "tw-terraform-training"
    default = "tw-terraform-training"
}

variable "region" {
    description = "Select the region that you prefer for CPU instance to provision"
}

variable "type" {
    description = "Select the type that you prefer for CPU instance to provision"
}

variable "image" {
    description = "Select the image that you prefer (required)"
}

variable "tags" {
    description = "Enter your prefer tags for grouping purpose"
}

variable "engine_id" {
    description = "Enter your prefer database engine (Mysql, ProgreSQL, MongoDB)"
}