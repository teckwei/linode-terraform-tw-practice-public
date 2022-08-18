terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.29.1"
    }
  }
}

provider "linode" {
  config_profile = var.config_profile
}

resource "linode_instance" "practice-terraform-instance" {
  label = "tw-terrraform-instance-1"
  region = var.region
  type = var.type
  image = var.image
  tags = [var.tags]

  swap_size = 512
  authorized_keys = ["${chomp(file("~/.ssh/id_rsa.pub"))}"]
  root_pass = "Somethingawfu1."
}

resource "linode_database_mysql" "practice-tw-database" {
  label = "tw-terrraform-database-1"
  engine_id = var.engine_id
  region = var.region
  type = var.type

  allow_list = ["0.0.0.0/0"]
  cluster_size = 1
  encrypted = true
  replication_type = "none"
  ssl_connection = true

  updates {
    day_of_week = "saturday"
    duration = 1
    frequency = "monthly"
    hour_of_day = 22
    week_of_month = 2
  }
}