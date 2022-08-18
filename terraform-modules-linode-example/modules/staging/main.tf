terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.29.1"
    }
  }
}

# Web Server
resource "linode_instance" "terraform-web" {
        image = var.image
        label = var.webserver_label
        group = "Terraform"
        region = var.region
        type = var.type
        swap_size = 1024
        authorized_keys = ["${chomp(file("~/.ssh/id_rsa.pub"))}"]
        root_pass = var.root_pass
}

resource "linode_database_mysql" "terraform-database" {
  label = var.dbserver_label
  engine_id = var.engine_id
  region = var.region
  type = var.type

  allow_list = ["0.0.0.0/0"]
  cluster_size = 3
  encrypted = true
  replication_type = "asynch"
  ssl_connection = true

  updates {
    day_of_week = "sunday"
    duration = 2
    frequency = "monthly"
    hour_of_day = 23
    week_of_month = 4
  }
}
